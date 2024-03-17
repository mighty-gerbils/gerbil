(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710687289)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj158501
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj158501)
               __obj158501)))))
    (define gxc#optimize!
      (lambda (_ctx158194_)
        (let ((__tmp158507
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx158194_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx158194_))
                 (let ((__tmp158509
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp158508
                        (##structure-ref
                         _ctx158194_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp158509 __tmp158508 '#t))
                 (let ((_code158197_
                        (let ((__tmp158510
                               (##structure-ref
                                _ctx158194_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp158510))))
                   (##structure-set!
                    _ctx158194_
                    _code158197_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp158506 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158505 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp158507
           gxc#current-compile-mutators
           __tmp158506
           gxc#current-compile-local-type
           __tmp158505))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx158183_)
        (letrec ((_load-it!158185_
                  (lambda (_id158192_)
                    (if (let ((__tmp158512
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp158512 _id158192_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id158192_))
                          (let ((__tmp158511
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp158511 _id158192_ '#t)))))))
          (let* ((_modid158187_
                  (##structure-ref _ctx158183_ '1 gx#expander-context::t '#f))
                 (_modid-str158189_ (symbol->string _modid158187_)))
            (if (let ()
                  (declare (not safe))
                  (string-prefix? '"gerbil/core" _modid-str158189_))
                (let ()
                  (declare (not safe))
                  (_load-it!158185_ 'gerbil/builtin))
                (for-each
                 _load-it!158185_
                 '(gerbil/runtime/gambit
                   gerbil/runtime/util
                   gerbil/runtime/table
                   gerbil/runtime/control
                   gerbil/runtime/system
                   gerbil/runtime/c3
                   gerbil/runtime/mop
                   gerbil/runtime/mop-system-classes
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
      (lambda (_ctx158128_)
        (letrec* ((_deps158130_
                   (let* ((_imports158174_
                           (##structure-ref
                            _ctx158128_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e158176_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx158128_))))
                     (if _$e158176_
                         ((lambda (_g158178158180_)
                            (let ()
                              (declare (not safe))
                              (cons _g158178158180_ _imports158174_)))
                          _$e158176_)
                         _imports158174_))))
          (let _lp158132_ ((_rest158134_ _deps158130_))
            (let* ((_rest158135158143_ _rest158134_)
                   (_else158137158151_ (lambda () '#!void))
                   (_K158139158162_
                    (lambda (_rest158154_ _hd158155_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd158155_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp158526
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp158525
                                       (##structure-ref
                                        _hd158155_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp158526 __tmp158525))
                                '#!void
                                (begin
                                  (let ((_$e158157_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd158155_))))
                                    (if _$e158157_
                                        ((lambda (_pre158160_)
                                           (let ((__tmp158523
                                                  (let ((__tmp158524
                                                         (##structure-ref
                                                          _hd158155_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre158160_
                                                          __tmp158524))))
                                             (declare (not safe))
                                             (_lp158132_ __tmp158523)))
                                         _$e158157_)
                                        (let ((__tmp158522
                                               (##structure-ref
                                                _hd158155_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp158132_ __tmp158522))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd158155_))))
                            (let ()
                              (declare (not safe))
                              (_lp158132_ _rest158154_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd158155_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp158521
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp158520
                                           (##structure-ref
                                            _hd158155_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp158521 __tmp158520))
                                    '#!void
                                    (begin
                                      (let ((__tmp158519
                                             (##structure-ref
                                              _hd158155_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp158132_ __tmp158519))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd158155_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp158132_ _rest158154_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd158155_
                                     'gx#module-import::t))
                                  (let ((__tmp158517
                                         (let ((__tmp158518
                                                (##direct-structure-ref
                                                 _hd158155_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp158518 _rest158154_))))
                                    (declare (not safe))
                                    (_lp158132_ __tmp158517))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd158155_
                                         'gx#module-export::t))
                                      (let ((__tmp158515
                                             (let ((__tmp158516
                                                    (##direct-structure-ref
                                                     _hd158155_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp158516
                                                     _rest158154_))))
                                        (declare (not safe))
                                        (_lp158132_ __tmp158515))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd158155_
                                             'gx#import-set::t))
                                          (let ((__tmp158513
                                                 (let ((__tmp158514
                                                        (##direct-structure-ref
                                                         _hd158155_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp158514
                                                         _rest158154_))))
                                            (declare (not safe))
                                            (_lp158132_ __tmp158513))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd158155_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest158135158143_))
                  (let ((_hd158140158165_
                         (let ()
                           (declare (not safe))
                           (##car _rest158135158143_)))
                        (_tl158141158167_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158135158143_))))
                    (let* ((_hd158170_ _hd158140158165_)
                           (_rest158172_ _tl158141158167_))
                      (declare (not safe))
                      (_K158139158162_ _rest158172_ _hd158170_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx158108_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx158108_
                    'gx#module-context::t))
                 (let ((__tmp158527
                        (##structure-ref
                         _ctx158108_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp158527)))
            '#!void
            (let* ((_ht158110_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id158112_
                    (##structure-ref
                     _ctx158108_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod158114_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht158110_ _id158112_))))
              (let ((_$e158117_ _mod158114_))
                (if _$e158117_
                    _$e158117_
                    (let* ((_mod158120_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx158108_)))
                           (_val158125_
                            (let ((_$e158122_ _mod158120_))
                              (if _$e158122_ _$e158122_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht158110_ _id158112_ _val158125_))
                      _val158125_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx158106_)
        (if (##structure-ref _ctx158106_ '1 gx#expander-context::t '#f)
            (let ((__tmp158528
                   (##structure-ref
                    _ctx158106_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp158528))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id158083_)
        (letrec ((_catch-e158085_
                  (lambda (_exn158104_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id158083_))
                          (let ()
                            (declare (not safe))
                            (display-exception _exn158104_)))
                        '#!void)
                    '#f))
                 (_import-e158086_
                  (lambda ()
                    (let* ((_str-id158089_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id158083_))
                             '".ssxi"))
                           (_artefact-path158097_
                            (let ((_odir158090158092_
                                   (gxc#current-compile-output-dir)))
                              (if _odir158090158092_
                                  (let ((_odir158095_ _odir158090158092_))
                                    (path-expand
                                     (string-append _str-id158089_ '".ss")
                                     _odir158095_))
                                  '#f)))
                           (_library-path158099_
                            (string->symbol
                             (string-append '":" _str-id158089_ '".ss")))
                           (_ssxi-path158101_
                            (if (and _artefact-path158097_
                                     (file-exists? _artefact-path158097_))
                                _artefact-path158097_
                                _library-path158099_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path158101_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path158101_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e158085_ _import-e158086_)))))
    (define gxc#optimize-source
      (lambda (_stx158074_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx158074_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx158074_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx158074_))
        (let* ((_stx158076_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx158074_)))
               (_stx158078_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx158076_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx158078_))
          (let ((_stx158081_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx158078_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx158081_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp158531 (list gxc#::generate-runtime-empty::t))
            (__tmp158529
             (let ((__tmp158530
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp158530 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp158531
         '()
         __tmp158529
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _$args158071_
        (apply make-instance gxc#::generate-ssxi::t _$args158071_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp158532
             (lambda ()
               (force gxc#::generate-runtime-empty-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin
                  gxc#generate-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin-syntax
                  gxc#generate-ssxi-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#module
                  gxc#generate-ssxi-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#define-values
                  gxc#generate-ssxi-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#call
                  gxc#generate-ssxi-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::generate-ssxi::t)))))
        (declare (not safe))
        (make-promise __tmp158532)))
    (define gxc#apply-generate-ssxi
      (lambda (_stx158063_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_self158066_
                (let ((__obj158503
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj158503))
               (__tmp158533
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self158066_ _stx158063_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp158533
           gxc#current-compile-method
           _self158066_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self158023_ _stx158024_)
        (let* ((_g158026158036_
                (lambda (_g158027158033_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158027158033_))))
               (_g158025158060_
                (lambda (_g158027158039_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158027158039_))
                      (let ((_e158031158041_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g158027158039_))))
                        (let ((_hd158030158044_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158031158041_)))
                              (_tl158029158046_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158031158041_))))
                          ((lambda (_L158049_)
                             (let ((__tmp158536
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self158023_
                                         _stx158024_))))
                                   (__tmp158534
                                    (let ((__tmp158535
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp158535 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp158536
                                gx#current-expander-phi
                                __tmp158534)))
                           _tl158029158046_)))
                      (let ()
                        (declare (not safe))
                        (_g158026158036_ _g158027158039_))))))
          (declare (not safe))
          (_g158025158060_ _stx158024_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self157962_ _stx157963_)
        (let* ((_g157965157979_
                (lambda (_g157966157976_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g157966157976_))))
               (_g157964158020_
                (lambda (_g157966157982_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g157966157982_))
                      (let ((_e157971157984_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g157966157982_))))
                        (let ((_hd157970157987_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157971157984_)))
                              (_tl157969157989_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157971157984_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl157969157989_))
                              (let ((_e157974157992_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl157969157989_))))
                                (let ((_hd157973157995_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157974157992_)))
                                      (_tl157972157997_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157974157992_))))
                                  ((lambda (_L158000_ _L158001_)
                                     (let* ((_ctx158014_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L158001_)))
                                            (_code158016_
                                             (##structure-ref
                                              _ctx158014_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp158537
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self157962_
                                                   _code158016_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp158537
                                          gx#current-expander-context
                                          _ctx158014_))))
                                   _tl157972157997_
                                   _hd157973157995_)))
                              (let ()
                                (declare (not safe))
                                (_g157965157979_ _g157966157982_)))))
                      (let ()
                        (declare (not safe))
                        (_g157965157979_ _g157966157982_))))))
          (declare (not safe))
          (_g157964158020_ _stx157963_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self157771_ _stx157772_)
        (letrec ((_generate-e157774_
                  (lambda (_id157951_)
                    (let* ((_sym157953_
                            (if (let ((__tmp158538
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp158538))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id157951_))
                                '#f))
                           (_$e157955_
                            (if _sym157953_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym157953_))
                                '#f)))
                      (if _$e157955_
                          ((lambda (_type157958_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym157953_))
                             (let* ((_typedecl157960_
                                     (let ((__method158504
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type157958_
                                               'typedecl))))
                                       (if __method158504
                                           (__method158504 _type157958_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type157958_
                                                    'typedecl)))))
                                    (__tmp158539
                                     (let ((__tmp158540
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl157960_ '()))))
                                       (declare (not safe))
                                       (cons _sym157953_ __tmp158540))))
                               (declare (not safe))
                               (cons 'declare-type __tmp158539)))
                           _$e157955_)
                          '(begin))))))
          (let* ((___stx158200158201_ _stx157772_)
                 (_g157777157815_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx158200158201_)))))
            (let ((___kont158202158203_
                   (lambda (_L157933_)
                     (let ()
                       (declare (not safe))
                       (_generate-e157774_ _L157933_))))
                  (___kont158204158205_
                   (lambda (_L157868_)
                     (let ((_types157894_
                            (map _generate-e157774_
                                 (let ((__tmp158541
                                        (lambda (_g157886157889_
                                                 _g157887157891_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g157886157889_
                                                  _g157887157891_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp158541 '() _L157868_)))))
                       (declare (not safe))
                       (cons 'begin _types157894_)))))
              (let ((___match158255158256_
                     (lambda (_e157795157820_
                              _hd157794157823_
                              _tl157793157825_
                              _e157798157828_
                              _hd157797157831_
                              _tl157796157833_
                              ___splice158206158207_
                              _target157799157836_
                              _tl157801157838_)
                       (letrec ((_loop157802157841_
                                 (lambda (_hd157800157844_ _id157806157846_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd157800157844_))
                                       (let ((_e157803157849_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd157800157844_))))
                                         (let ((_lp-tl157805157854_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e157803157849_)))
                                               (_lp-hd157804157852_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e157803157849_))))
                                           (let ((__tmp158542
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd157804157852_
                                                          _id157806157846_))))
                                             (declare (not safe))
                                             (_loop157802157841_
                                              _lp-tl157805157854_
                                              __tmp158542))))
                                       (let ((_id157807157857_
                                              (reverse _id157806157846_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl157796157833_))
                                             (let ((_e157810157860_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl157796157833_))))
                                               (let ((_tl157808157865_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e157810157860_)))
                                                     (_hd157809157863_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e157810157860_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl157808157865_))
                                                     (___kont158204158205_
                                                      _id157807157857_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g157777157815_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g157777157815_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop157802157841_ _target157799157836_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx158200158201_))
                    (let ((_e157782157901_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx158200158201_))))
                      (let ((_tl157780157906_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157782157901_)))
                            (_hd157781157904_
                             (let ()
                               (declare (not safe))
                               (##car _e157782157901_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157780157906_))
                            (let ((_e157785157909_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl157780157906_))))
                              (let ((_tl157783157914_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157785157909_)))
                                    (_hd157784157912_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157785157909_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd157784157912_))
                                    (let ((_e157788157917_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd157784157912_))))
                                      (let ((_tl157786157922_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157788157917_)))
                                            (_hd157787157920_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157788157917_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157786157922_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl157783157914_))
                                                (let ((_e157791157925_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl157783157914_))))
                                                  (let ((_tl157789157930_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e157791157925_)))
                                                        (_hd157790157928_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e157791157925_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl157789157930_))
                                                        (___kont158202158203_
                                                         _hd157787157920_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd157784157912_))
                                                            (let ((___splice158206158207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd157784157912_ '0))))
                      (let ((_tl157801157838_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158206158207_ '1)))
                            (_target157799157836_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158206158207_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl157801157838_))
                            (___match158255158256_
                             _e157782157901_
                             _hd157781157904_
                             _tl157780157906_
                             _e157785157909_
                             _hd157784157912_
                             _tl157783157914_
                             ___splice158206158207_
                             _target157799157836_
                             _tl157801157838_)
                            (let () (declare (not safe)) (_g157777157815_)))))
                    (let () (declare (not safe)) (_g157777157815_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd157784157912_))
                                                    (let ((___splice158206158207_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd157784157912_
                                                              '0))))
                                                      (let ((_tl157801157838_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice158206158207_ '1)))
                    (_target157799157836_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice158206158207_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl157801157838_))
                    (___match158255158256_
                     _e157782157901_
                     _hd157781157904_
                     _tl157780157906_
                     _e157785157909_
                     _hd157784157912_
                     _tl157783157914_
                     ___splice158206158207_
                     _target157799157836_
                     _tl157801157838_)
                    (let () (declare (not safe)) (_g157777157815_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g157777157815_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd157784157912_))
                                                (let ((___splice158206158207_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd157784157912_
                                                          '0))))
                                                  (let ((_tl157801157838_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158206158207_
                                                            '1)))
                                                        (_target157799157836_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158206158207_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl157801157838_))
                                                        (___match158255158256_
                                                         _e157782157901_
                                                         _hd157781157904_
                                                         _tl157780157906_
                                                         _e157785157909_
                                                         _hd157784157912_
                                                         _tl157783157914_
                                                         ___splice158206158207_
                                                         _target157799157836_
                                                         _tl157801157838_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g157777157815_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g157777157815_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd157784157912_))
                                        (let ((___splice158206158207_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd157784157912_
                                                  '0))))
                                          (let ((_tl157801157838_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158206158207_
                                                    '1)))
                                                (_target157799157836_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158206158207_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl157801157838_))
                                                (___match158255158256_
                                                 _e157782157901_
                                                 _hd157781157904_
                                                 _tl157780157906_
                                                 _e157785157909_
                                                 _hd157784157912_
                                                 _tl157783157914_
                                                 ___splice158206158207_
                                                 _target157799157836_
                                                 _tl157801157838_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g157777157815_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g157777157815_))))))
                            (let () (declare (not safe)) (_g157777157815_)))))
                    (let () (declare (not safe)) (_g157777157815_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self157324_ _stx157325_)
        (let* ((___stx158258158259_ _stx157325_)
               (_g157329157431_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx158258158259_)))))
          (let ((___kont158260158261_
                 (lambda (_L157721_ _L157722_ _L157723_ _L157724_ _L157725_)
                   (let ((__tmp158543
                          (let ((__tmp158550
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157724_)))
                                (__tmp158544
                                 (let ((__tmp158549
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157723_)))
                                       (__tmp158545
                                        (let ((__tmp158548
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157722_)))
                                              (__tmp158546
                                               (let ((__tmp158547
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L157721_))))
                                                 (declare (not safe))
                                                 (cons __tmp158547 '()))))
                                          (declare (not safe))
                                          (cons __tmp158548 __tmp158546))))
                                   (declare (not safe))
                                   (cons __tmp158549 __tmp158545))))
                            (declare (not safe))
                            (cons __tmp158550 __tmp158544))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158543))))
                (___kont158262158263_
                 (lambda (_L157547_ _L157548_ _L157549_ _L157550_)
                   (let ((__tmp158551
                          (let ((__tmp158557
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157549_)))
                                (__tmp158552
                                 (let ((__tmp158556
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157548_)))
                                       (__tmp158553
                                        (let ((__tmp158555
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157547_)))
                                              (__tmp158554
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp158555 __tmp158554))))
                                   (declare (not safe))
                                   (cons __tmp158556 __tmp158553))))
                            (declare (not safe))
                            (cons __tmp158557 __tmp158552))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158551))))
                (___kont158264158265_ (lambda () '(begin))))
            (let ((___match158393158394_
                   (lambda (_e157338157593_
                            _hd157337157596_
                            _tl157336157598_
                            _e157341157601_
                            _hd157340157604_
                            _tl157339157606_
                            _e157344157609_
                            _hd157343157612_
                            _tl157342157614_
                            _e157347157617_
                            _hd157346157620_
                            _tl157345157622_
                            _e157350157625_
                            _hd157349157628_
                            _tl157348157630_
                            _e157353157633_
                            _hd157352157636_
                            _tl157351157638_
                            _e157356157641_
                            _hd157355157644_
                            _tl157354157646_
                            _e157359157649_
                            _hd157358157652_
                            _tl157357157654_
                            _e157362157657_
                            _hd157361157660_
                            _tl157360157662_
                            _e157365157665_
                            _hd157364157668_
                            _tl157363157670_
                            _e157368157673_
                            _hd157367157676_
                            _tl157366157678_
                            _e157371157681_
                            _hd157370157684_
                            _tl157369157686_
                            _e157374157689_
                            _hd157373157692_
                            _tl157372157694_
                            _e157377157697_
                            _hd157376157700_
                            _tl157375157702_
                            _e157380157705_
                            _hd157379157708_
                            _tl157378157710_
                            _e157383157713_
                            _hd157382157716_
                            _tl157381157718_)
                     (let ((_L157721_ _hd157382157716_)
                           (_L157722_ _hd157373157692_)
                           (_L157723_ _hd157364157668_)
                           (_L157724_ _hd157355157644_)
                           (_L157725_ _hd157346157620_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L157725_
                              'bind-method!))
                           (___kont158260158261_
                            _L157721_
                            _L157722_
                            _L157723_
                            _L157724_
                            _L157725_)
                           (___kont158264158265_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx158258158259_))
                  (let ((_e157338157593_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx158258158259_))))
                    (let ((_tl157336157598_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157338157593_)))
                          (_hd157337157596_
                           (let ()
                             (declare (not safe))
                             (##car _e157338157593_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl157336157598_))
                          (let ((_e157341157601_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl157336157598_))))
                            (let ((_tl157339157606_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157341157601_)))
                                  (_hd157340157604_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157341157601_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd157340157604_))
                                  (let ((_e157344157609_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd157340157604_))))
                                    (let ((_tl157342157614_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157344157609_)))
                                          (_hd157343157612_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157344157609_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd157343157612_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd157343157612_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157342157614_))
                                                  (let ((_e157347157617_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157342157614_))))
                                                    (let ((_tl157345157622_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157347157617_)))
                                                          (_hd157346157620_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157347157617_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl157345157622_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl157339157606_))
                      (let ((_e157350157625_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl157339157606_))))
                        (let ((_tl157348157630_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157350157625_)))
                              (_hd157349157628_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157350157625_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd157349157628_))
                              (let ((_e157353157633_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd157349157628_))))
                                (let ((_tl157351157638_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157353157633_)))
                                      (_hd157352157636_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157353157633_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd157352157636_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd157352157636_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl157351157638_))
                                              (let ((_e157356157641_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl157351157638_))))
                                                (let ((_tl157354157646_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e157356157641_)))
                                                      (_hd157355157644_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e157356157641_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157354157646_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl157348157630_))
                                                          (let ((_e157359157649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl157348157630_))))
                    (let ((_tl157357157654_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157359157649_)))
                          (_hd157358157652_
                           (let ()
                             (declare (not safe))
                             (##car _e157359157649_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd157358157652_))
                          (let ((_e157362157657_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd157358157652_))))
                            (let ((_tl157360157662_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157362157657_)))
                                  (_hd157361157660_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157362157657_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd157361157660_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd157361157660_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl157360157662_))
                                          (let ((_e157365157665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl157360157662_))))
                                            (let ((_tl157363157670_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e157365157665_)))
                                                  (_hd157364157668_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e157365157665_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl157363157670_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl157357157654_))
                                                      (let ((_e157368157673_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl157357157654_))))
                (let ((_tl157366157678_
                       (let () (declare (not safe)) (##cdr _e157368157673_)))
                      (_hd157367157676_
                       (let () (declare (not safe)) (##car _e157368157673_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd157367157676_))
                      (let ((_e157371157681_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd157367157676_))))
                        (let ((_tl157369157686_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157371157681_)))
                              (_hd157370157684_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157371157681_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd157370157684_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd157370157684_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl157369157686_))
                                      (let ((_e157374157689_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl157369157686_))))
                                        (let ((_tl157372157694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e157374157689_)))
                                              (_hd157373157692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e157374157689_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157372157694_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157366157678_))
                                                  (let ((_e157377157697_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157366157678_))))
                                                    (let ((_tl157375157702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157377157697_)))
                                                          (_hd157376157700_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157377157697_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd157376157700_))
                                                          (let ((_e157380157705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd157376157700_))))
                    (let ((_tl157378157710_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157380157705_)))
                          (_hd157379157708_
                           (let ()
                             (declare (not safe))
                             (##car _e157380157705_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd157379157708_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd157379157708_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl157378157710_))
                                  (let ((_e157383157713_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl157378157710_))))
                                    (let ((_tl157381157718_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157383157713_)))
                                          (_hd157382157716_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157383157713_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl157381157718_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157375157702_))
                                              (___match158393158394_
                                               _e157338157593_
                                               _hd157337157596_
                                               _tl157336157598_
                                               _e157341157601_
                                               _hd157340157604_
                                               _tl157339157606_
                                               _e157344157609_
                                               _hd157343157612_
                                               _tl157342157614_
                                               _e157347157617_
                                               _hd157346157620_
                                               _tl157345157622_
                                               _e157350157625_
                                               _hd157349157628_
                                               _tl157348157630_
                                               _e157353157633_
                                               _hd157352157636_
                                               _tl157351157638_
                                               _e157356157641_
                                               _hd157355157644_
                                               _tl157354157646_
                                               _e157359157649_
                                               _hd157358157652_
                                               _tl157357157654_
                                               _e157362157657_
                                               _hd157361157660_
                                               _tl157360157662_
                                               _e157365157665_
                                               _hd157364157668_
                                               _tl157363157670_
                                               _e157368157673_
                                               _hd157367157676_
                                               _tl157366157678_
                                               _e157371157681_
                                               _hd157370157684_
                                               _tl157369157686_
                                               _e157374157689_
                                               _hd157373157692_
                                               _tl157372157694_
                                               _e157377157697_
                                               _hd157376157700_
                                               _tl157375157702_
                                               _e157380157705_
                                               _hd157379157708_
                                               _tl157378157710_
                                               _e157383157713_
                                               _hd157382157716_
                                               _tl157381157718_)
                                              (___kont158264158265_))
                                          (___kont158264158265_))))
                                  (___kont158264158265_))
                              (___kont158264158265_))
                          (___kont158264158265_))))
                  (___kont158264158265_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157366157678_))
                                                      (if (let ((__tmp158558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp158558 'bind-method!))
                  (let ((_L157547_ _hd157373157692_)
                        (_L157548_ _hd157364157668_)
                        (_L157549_ _hd157355157644_)
                        (_L157550_ _hd157346157620_))
                    (___kont158262158263_
                     _L157547_
                     _L157548_
                     _L157549_
                     _L157550_))
                  (___kont158264158265_))
              (___kont158264158265_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158264158265_))))
                                      (___kont158264158265_))
                                  (___kont158264158265_))
                              (___kont158264158265_))))
                      (___kont158264158265_))))
              (___kont158264158265_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158264158265_))))
                                          (___kont158264158265_))
                                      (___kont158264158265_))
                                  (___kont158264158265_))))
                          (___kont158264158265_))))
                  (___kont158264158265_))
              (___kont158264158265_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158264158265_))
                                          (___kont158264158265_))
                                      (___kont158264158265_))))
                              (___kont158264158265_))))
                      (___kont158264158265_))
                  (___kont158264158265_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158264158265_))
                                              (___kont158264158265_))
                                          (___kont158264158265_))))
                                  (___kont158264158265_))))
                          (___kont158264158265_))))
                  (___kont158264158265_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self157300_)
        (let* ((_self157301157307_ _self157300_)
               (_E157303157311_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157301157307_))))
               (_K157304157316_
                (lambda (_alias-id157314_)
                  (let ((__tmp158559
                         (let ()
                           (declare (not safe))
                           (cons _alias-id157314_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp158559)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157301157307_ 'gxc#!alias::t))
              (let* ((_e157305157319_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157301157307_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id157322_ _e157305157319_))
                (declare (not safe))
                (_K157304157316_ _alias-id157322_))
              (let () (declare (not safe)) (_E157303157311_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self157084_)
        (let* ((_self157085157101_ _self157084_)
               (_E157087157105_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157085157101_))))
               (_K157088157120_
                (lambda (_methods157108_
                         _metaclass157109_
                         _system?157110_
                         _final?157111_
                         _struct?157112_
                         _constructor157113_
                         _fields157114_
                         _slots157115_
                         _precendence-list157116_
                         _super157117_
                         _id157118_)
                  (let ((__tmp158560
                         (let ((__tmp158561
                                (let ((__tmp158562
                                       (let ((__tmp158563
                                              (let ((__tmp158564
                                                     (let ((__tmp158565
                                                            (let ((__tmp158566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp158567
                                  (let ((__tmp158568
                                         (let ((__tmp158569
                                                (let ((__tmp158570
                                                       (let ((__tmp158571
                                                              (if _methods157108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (hash->list _methods157108_))
                          '#f)))
                 (declare (not safe))
                 (cons __tmp158571 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _metaclass157109_
                                                        __tmp158570))))
                                           (declare (not safe))
                                           (cons _system?157110_
                                                 __tmp158569))))
                                    (declare (not safe))
                                    (cons _final?157111_ __tmp158568))))
                             (declare (not safe))
                             (cons _struct?157112_ __tmp158567))))
                      (declare (not safe))
                      (cons _constructor157113_ __tmp158566))))
               (declare (not safe))
               (cons _fields157114_ __tmp158565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots157115_
                                                      __tmp158564))))
                                         (declare (not safe))
                                         (cons _precendence-list157116_
                                               __tmp158563))))
                                  (declare (not safe))
                                  (cons _super157117_ __tmp158562))))
                           (declare (not safe))
                           (cons _id157118_ __tmp158561))))
                    (declare (not safe))
                    (cons '@class __tmp158560)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157085157101_ 'gxc#!class::t))
              (let* ((_e157089157123_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157085157101_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id157126_ _e157089157123_)
                     (_e157090157128_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157085157101_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super157131_ _e157090157128_)
                     (_e157091157133_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157085157101_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list157136_ _e157091157133_)
                     (_e157092157138_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157085157101_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots157141_ _e157092157138_)
                     (_e157093157143_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157085157101_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields157146_ _e157093157143_)
                     (_e157094157148_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157085157101_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor157151_ _e157094157148_)
                     (_e157095157153_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157085157101_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?157156_ _e157095157153_)
                     (_e157096157158_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157085157101_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?157161_ _e157096157158_)
                     (_e157097157163_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157085157101_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_system?157166_ _e157097157163_)
                     (_e157098157168_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157085157101_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_metaclass157171_ _e157098157168_)
                     (_e157099157173_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157085157101_
                         '11
                         gxc#!class::t
                         '#f)))
                     (_methods157176_ _e157099157173_))
                (declare (not safe))
                (_K157088157120_
                 _methods157176_
                 _metaclass157171_
                 _system?157166_
                 _final?157161_
                 _struct?157156_
                 _constructor157151_
                 _fields157146_
                 _slots157141_
                 _precendence-list157136_
                 _super157131_
                 _id157126_))
              (let () (declare (not safe)) (_E157087157105_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self156938_)
        (let* ((_self156939156945_ _self156938_)
               (_E156941156949_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156939156945_))))
               (_K156942156954_
                (lambda (_klass-id156952_)
                  (let ((__tmp158572
                         (let ()
                           (declare (not safe))
                           (cons _klass-id156952_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp158572)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156939156945_
                 'gxc#!predicate::t))
              (let* ((_e156943156957_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156939156945_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156960_ _e156943156957_))
                (declare (not safe))
                (_K156942156954_ _klass-id156960_))
              (let () (declare (not safe)) (_E156941156949_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self156792_)
        (let* ((_self156793156799_ _self156792_)
               (_E156795156803_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156793156799_))))
               (_K156796156808_
                (lambda (_klass-id156806_)
                  (let ((__tmp158573
                         (let ()
                           (declare (not safe))
                           (cons _klass-id156806_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp158573)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156793156799_
                 'gxc#!constructor::t))
              (let* ((_e156797156811_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156793156799_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156814_ _e156797156811_))
                (declare (not safe))
                (_K156796156808_ _klass-id156814_))
              (let () (declare (not safe)) (_E156795156803_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self156632_)
        (let* ((_self156633156641_ _self156632_)
               (_E156635156645_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156633156641_))))
               (_K156636156652_
                (lambda (_checked?156648_ _slot156649_ _klass-id156650_)
                  (let ((__tmp158574
                         (let ((__tmp158575
                                (let ((__tmp158576
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156648_ '()))))
                                  (declare (not safe))
                                  (cons _slot156649_ __tmp158576))))
                           (declare (not safe))
                           (cons _klass-id156650_ __tmp158575))))
                    (declare (not safe))
                    (cons '@accessor __tmp158574)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156633156641_
                 'gxc#!accessor::t))
              (let* ((_e156637156655_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156633156641_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156658_ _e156637156655_)
                     (_e156638156660_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156633156641_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot156663_ _e156638156660_)
                     (_e156639156665_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156633156641_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?156668_ _e156639156665_))
                (declare (not safe))
                (_K156636156652_
                 _checked?156668_
                 _slot156663_
                 _klass-id156658_))
              (let () (declare (not safe)) (_E156635156645_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self156472_)
        (let* ((_self156473156481_ _self156472_)
               (_E156475156485_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156473156481_))))
               (_K156476156492_
                (lambda (_checked?156488_ _slot156489_ _klass-id156490_)
                  (let ((__tmp158577
                         (let ((__tmp158578
                                (let ((__tmp158579
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156488_ '()))))
                                  (declare (not safe))
                                  (cons _slot156489_ __tmp158579))))
                           (declare (not safe))
                           (cons _klass-id156490_ __tmp158578))))
                    (declare (not safe))
                    (cons '@mutator __tmp158577)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156473156481_ 'gxc#!mutator::t))
              (let* ((_e156477156495_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156473156481_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156498_ _e156477156495_)
                     (_e156478156500_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156473156481_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot156503_ _e156478156500_)
                     (_e156479156505_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156473156481_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?156508_ _e156479156505_))
                (declare (not safe))
                (_K156476156492_
                 _checked?156508_
                 _slot156503_
                 _klass-id156498_))
              (let () (declare (not safe)) (_E156475156485_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self156298_)
        (let* ((_self156299156309_ _self156298_)
               (_E156301156313_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156299156309_))))
               (_K156302156324_
                (lambda (_typedecl156316_
                         _inline156317_
                         _dispatch156318_
                         _arity156319_)
                  (if _inline156317_
                      (let ((_$e156321_ _typedecl156316_))
                        (if _$e156321_
                            _$e156321_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp158580
                             (let ((__tmp158581
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch156318_ '()))))
                               (declare (not safe))
                               (cons _arity156319_ __tmp158581))))
                        (declare (not safe))
                        (cons '@lambda __tmp158580))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156299156309_ 'gxc#!lambda::t))
              (let* ((_e156303156327_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156299156309_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156304156330_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156299156309_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity156333_ _e156304156330_)
                     (_e156305156335_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156299156309_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch156338_ _e156305156335_)
                     (_e156306156340_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156299156309_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline156343_ _e156306156340_)
                     (_e156307156345_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156299156309_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl156348_ _e156307156345_))
                (declare (not safe))
                (_K156302156324_
                 _typedecl156348_
                 _inline156343_
                 _dispatch156338_
                 _arity156333_))
              (let () (declare (not safe)) (_E156301156313_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self156109_)
        (letrec ((_clause-e156111_
                  (lambda (_clause156141_)
                    (let* ((_clause156142156150_ _clause156141_)
                           (_E156144156154_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause156142156150_))))
                           (_K156145156160_
                            (lambda (_dispatch156157_ _arity156158_)
                              (let ((__tmp158582
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch156157_ '()))))
                                (declare (not safe))
                                (cons _arity156158_ __tmp158582)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause156142156150_
                             'gxc#!lambda::t))
                          (let* ((_e156146156163_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156142156150_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e156147156166_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156142156150_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity156169_ _e156147156166_)
                                 (_e156148156171_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156142156150_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch156174_ _e156148156171_))
                            (declare (not safe))
                            (_K156145156160_ _dispatch156174_ _arity156169_))
                          (let () (declare (not safe)) (_E156144156154_)))))))
          (let* ((_self156112156119_ _self156109_)
                 (_E156114156123_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self156112156119_))))
                 (_K156115156130_
                  (lambda (_clauses156126_)
                    (let ((_clauses156128_
                           (map _clause-e156111_ _clauses156126_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses156128_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self156112156119_
                   'gxc#!case-lambda::t))
                (let* ((_e156116156133_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156112156119_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e156117156136_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156112156119_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses156139_ _e156117156136_))
                  (declare (not safe))
                  (_K156115156130_ _clauses156139_))
                (let () (declare (not safe)) (_E156114156123_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self155952_)
        (let* ((_self155953155961_ _self155952_)
               (_E155955155965_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155953155961_))))
               (_K155956155971_
                (lambda (_dispatch155968_ _table155969_)
                  (let ((__tmp158583
                         (let ((__tmp158584
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch155968_ '()))))
                           (declare (not safe))
                           (cons _table155969_ __tmp158584))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp158583)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155953155961_
                 'gxc#!kw-lambda::t))
              (let* ((_e155957155974_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155953155961_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e155958155977_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155953155961_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table155980_ _e155958155977_)
                     (_e155959155982_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155953155961_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch155985_ _e155959155982_))
                (declare (not safe))
                (_K155956155971_ _dispatch155985_ _table155980_))
              (let () (declare (not safe)) (_E155955155965_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self155795_)
        (let* ((_self155796155804_ _self155795_)
               (_E155798155808_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155796155804_))))
               (_K155799155814_
                (lambda (_main155811_ _keys155812_)
                  (let ((__tmp158585
                         (let ((__tmp158586
                                (let ()
                                  (declare (not safe))
                                  (cons _main155811_ '()))))
                           (declare (not safe))
                           (cons _keys155812_ __tmp158586))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp158585)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155796155804_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e155800155817_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155796155804_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e155801155820_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155796155804_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys155823_ _e155801155820_)
                     (_e155802155825_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155796155804_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main155828_ _e155802155825_))
                (declare (not safe))
                (_K155799155814_ _main155828_ _keys155823_))
              (let () (declare (not safe)) (_E155798155808_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
