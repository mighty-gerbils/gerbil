(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710699096)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj158432
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj158432)
               __obj158432)))))
    (define gxc#optimize!
      (lambda (_ctx158125_)
        (let ((__tmp158438
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx158125_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx158125_))
                 (let ((__tmp158440
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp158439
                        (##structure-ref
                         _ctx158125_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp158440 __tmp158439 '#t))
                 (let ((_code158128_
                        (let ((__tmp158441
                               (##structure-ref
                                _ctx158125_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp158441))))
                   (##structure-set!
                    _ctx158125_
                    _code158128_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp158437 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158436 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp158438
           gxc#current-compile-mutators
           __tmp158437
           gxc#current-compile-local-type
           __tmp158436))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx158114_)
        (letrec ((_load-it!158116_
                  (lambda (_id158123_)
                    (if (let ((__tmp158443
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp158443 _id158123_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id158123_))
                          (let ((__tmp158442
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp158442 _id158123_ '#t)))))))
          (let* ((_modid158118_
                  (##structure-ref _ctx158114_ '1 gx#expander-context::t '#f))
                 (_modid-str158120_ (symbol->string _modid158118_)))
            (if (let ()
                  (declare (not safe))
                  (string-prefix? '"gerbil/core" _modid-str158120_))
                (let ()
                  (declare (not safe))
                  (_load-it!158116_ 'gerbil/builtin))
                (for-each
                 _load-it!158116_
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
      (lambda (_ctx158059_)
        (letrec* ((_deps158061_
                   (let* ((_imports158105_
                           (##structure-ref
                            _ctx158059_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e158107_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx158059_))))
                     (if _$e158107_
                         ((lambda (_g158109158111_)
                            (let ()
                              (declare (not safe))
                              (cons _g158109158111_ _imports158105_)))
                          _$e158107_)
                         _imports158105_))))
          (let _lp158063_ ((_rest158065_ _deps158061_))
            (let* ((_rest158066158074_ _rest158065_)
                   (_else158068158082_ (lambda () '#!void))
                   (_K158070158093_
                    (lambda (_rest158085_ _hd158086_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd158086_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp158457
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp158456
                                       (##structure-ref
                                        _hd158086_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp158457 __tmp158456))
                                '#!void
                                (begin
                                  (let ((_$e158088_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd158086_))))
                                    (if _$e158088_
                                        ((lambda (_pre158091_)
                                           (let ((__tmp158454
                                                  (let ((__tmp158455
                                                         (##structure-ref
                                                          _hd158086_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre158091_
                                                          __tmp158455))))
                                             (declare (not safe))
                                             (_lp158063_ __tmp158454)))
                                         _$e158088_)
                                        (let ((__tmp158453
                                               (##structure-ref
                                                _hd158086_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp158063_ __tmp158453))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd158086_))))
                            (let ()
                              (declare (not safe))
                              (_lp158063_ _rest158085_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd158086_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp158452
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp158451
                                           (##structure-ref
                                            _hd158086_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp158452 __tmp158451))
                                    '#!void
                                    (begin
                                      (let ((__tmp158450
                                             (##structure-ref
                                              _hd158086_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp158063_ __tmp158450))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd158086_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp158063_ _rest158085_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd158086_
                                     'gx#module-import::t))
                                  (let ((__tmp158448
                                         (let ((__tmp158449
                                                (##direct-structure-ref
                                                 _hd158086_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp158449 _rest158085_))))
                                    (declare (not safe))
                                    (_lp158063_ __tmp158448))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd158086_
                                         'gx#module-export::t))
                                      (let ((__tmp158446
                                             (let ((__tmp158447
                                                    (##direct-structure-ref
                                                     _hd158086_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp158447
                                                     _rest158085_))))
                                        (declare (not safe))
                                        (_lp158063_ __tmp158446))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd158086_
                                             'gx#import-set::t))
                                          (let ((__tmp158444
                                                 (let ((__tmp158445
                                                        (##direct-structure-ref
                                                         _hd158086_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp158445
                                                         _rest158085_))))
                                            (declare (not safe))
                                            (_lp158063_ __tmp158444))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd158086_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest158066158074_))
                  (let ((_hd158071158096_
                         (let ()
                           (declare (not safe))
                           (##car _rest158066158074_)))
                        (_tl158072158098_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158066158074_))))
                    (let* ((_hd158101_ _hd158071158096_)
                           (_rest158103_ _tl158072158098_))
                      (declare (not safe))
                      (_K158070158093_ _rest158103_ _hd158101_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx158039_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx158039_
                    'gx#module-context::t))
                 (let ((__tmp158458
                        (##structure-ref
                         _ctx158039_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp158458)))
            '#!void
            (let* ((_ht158041_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id158043_
                    (##structure-ref
                     _ctx158039_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod158045_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht158041_ _id158043_))))
              (let ((_$e158048_ _mod158045_))
                (if _$e158048_
                    _$e158048_
                    (let* ((_mod158051_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx158039_)))
                           (_val158056_
                            (let ((_$e158053_ _mod158051_))
                              (if _$e158053_ _$e158053_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht158041_ _id158043_ _val158056_))
                      _val158056_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx158037_)
        (if (##structure-ref _ctx158037_ '1 gx#expander-context::t '#f)
            (let ((__tmp158459
                   (##structure-ref
                    _ctx158037_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp158459))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id158014_)
        (letrec ((_catch-e158016_
                  (lambda (_exn158035_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id158014_))
                          (let ()
                            (declare (not safe))
                            (display-exception _exn158035_)))
                        '#!void)
                    '#f))
                 (_import-e158017_
                  (lambda ()
                    (let* ((_str-id158020_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id158014_))
                             '".ssxi"))
                           (_artefact-path158028_
                            (let ((_odir158021158023_
                                   (gxc#current-compile-output-dir)))
                              (if _odir158021158023_
                                  (let ((_odir158026_ _odir158021158023_))
                                    (path-expand
                                     (string-append _str-id158020_ '".ss")
                                     _odir158026_))
                                  '#f)))
                           (_library-path158030_
                            (string->symbol
                             (string-append '":" _str-id158020_ '".ss")))
                           (_ssxi-path158032_
                            (if (and _artefact-path158028_
                                     (file-exists? _artefact-path158028_))
                                _artefact-path158028_
                                _library-path158030_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path158032_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path158032_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e158016_ _import-e158017_)))))
    (define gxc#optimize-source
      (lambda (_stx158005_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx158005_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx158005_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx158005_))
        (let* ((_stx158007_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx158005_)))
               (_stx158009_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx158007_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx158009_))
          (let ((_stx158012_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx158009_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx158012_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp158462 (list gxc#::generate-runtime-empty::t))
            (__tmp158460
             (let ((__tmp158461
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp158461 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp158462
         '()
         __tmp158460
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _$args158002_
        (apply make-instance gxc#::generate-ssxi::t _$args158002_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp158463
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
        (make-promise __tmp158463)))
    (define gxc#apply-generate-ssxi
      (lambda (_stx157994_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_self157997_
                (let ((__obj158434
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj158434))
               (__tmp158464
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self157997_ _stx157994_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp158464
           gxc#current-compile-method
           _self157997_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self157954_ _stx157955_)
        (let* ((_g157957157967_
                (lambda (_g157958157964_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g157958157964_))))
               (_g157956157991_
                (lambda (_g157958157970_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g157958157970_))
                      (let ((_e157962157972_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g157958157970_))))
                        (let ((_hd157961157975_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157962157972_)))
                              (_tl157960157977_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157962157972_))))
                          ((lambda (_L157980_)
                             (let ((__tmp158467
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self157954_
                                         _stx157955_))))
                                   (__tmp158465
                                    (let ((__tmp158466
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp158466 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp158467
                                gx#current-expander-phi
                                __tmp158465)))
                           _tl157960157977_)))
                      (let ()
                        (declare (not safe))
                        (_g157957157967_ _g157958157970_))))))
          (declare (not safe))
          (_g157956157991_ _stx157955_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self157893_ _stx157894_)
        (let* ((_g157896157910_
                (lambda (_g157897157907_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g157897157907_))))
               (_g157895157951_
                (lambda (_g157897157913_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g157897157913_))
                      (let ((_e157902157915_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g157897157913_))))
                        (let ((_hd157901157918_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157902157915_)))
                              (_tl157900157920_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157902157915_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl157900157920_))
                              (let ((_e157905157923_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl157900157920_))))
                                (let ((_hd157904157926_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157905157923_)))
                                      (_tl157903157928_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157905157923_))))
                                  ((lambda (_L157931_ _L157932_)
                                     (let* ((_ctx157945_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L157932_)))
                                            (_code157947_
                                             (##structure-ref
                                              _ctx157945_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp158468
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self157893_
                                                   _code157947_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp158468
                                          gx#current-expander-context
                                          _ctx157945_))))
                                   _tl157903157928_
                                   _hd157904157926_)))
                              (let ()
                                (declare (not safe))
                                (_g157896157910_ _g157897157913_)))))
                      (let ()
                        (declare (not safe))
                        (_g157896157910_ _g157897157913_))))))
          (declare (not safe))
          (_g157895157951_ _stx157894_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self157702_ _stx157703_)
        (letrec ((_generate-e157705_
                  (lambda (_id157882_)
                    (let* ((_sym157884_
                            (if (let ((__tmp158469
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp158469))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id157882_))
                                '#f))
                           (_$e157886_
                            (if _sym157884_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym157884_))
                                '#f)))
                      (if _$e157886_
                          ((lambda (_type157889_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym157884_))
                             (let* ((_typedecl157891_
                                     (let ((__method158435
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type157889_
                                               'typedecl))))
                                       (if __method158435
                                           (__method158435 _type157889_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type157889_
                                                    'typedecl)))))
                                    (__tmp158470
                                     (let ((__tmp158471
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl157891_ '()))))
                                       (declare (not safe))
                                       (cons _sym157884_ __tmp158471))))
                               (declare (not safe))
                               (cons 'declare-type __tmp158470)))
                           _$e157886_)
                          '(begin))))))
          (let* ((___stx158131158132_ _stx157703_)
                 (_g157708157746_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx158131158132_)))))
            (let ((___kont158133158134_
                   (lambda (_L157864_)
                     (let ()
                       (declare (not safe))
                       (_generate-e157705_ _L157864_))))
                  (___kont158135158136_
                   (lambda (_L157799_)
                     (let ((_types157825_
                            (map _generate-e157705_
                                 (let ((__tmp158472
                                        (lambda (_g157817157820_
                                                 _g157818157822_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g157817157820_
                                                  _g157818157822_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp158472 '() _L157799_)))))
                       (declare (not safe))
                       (cons 'begin _types157825_)))))
              (let ((___match158186158187_
                     (lambda (_e157726157751_
                              _hd157725157754_
                              _tl157724157756_
                              _e157729157759_
                              _hd157728157762_
                              _tl157727157764_
                              ___splice158137158138_
                              _target157730157767_
                              _tl157732157769_)
                       (letrec ((_loop157733157772_
                                 (lambda (_hd157731157775_ _id157737157777_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd157731157775_))
                                       (let ((_e157734157780_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd157731157775_))))
                                         (let ((_lp-tl157736157785_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e157734157780_)))
                                               (_lp-hd157735157783_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e157734157780_))))
                                           (let ((__tmp158473
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd157735157783_
                                                          _id157737157777_))))
                                             (declare (not safe))
                                             (_loop157733157772_
                                              _lp-tl157736157785_
                                              __tmp158473))))
                                       (let ((_id157738157788_
                                              (reverse _id157737157777_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl157727157764_))
                                             (let ((_e157741157791_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl157727157764_))))
                                               (let ((_tl157739157796_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e157741157791_)))
                                                     (_hd157740157794_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e157741157791_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl157739157796_))
                                                     (___kont158135158136_
                                                      _id157738157788_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g157708157746_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g157708157746_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop157733157772_ _target157730157767_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx158131158132_))
                    (let ((_e157713157832_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx158131158132_))))
                      (let ((_tl157711157837_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157713157832_)))
                            (_hd157712157835_
                             (let ()
                               (declare (not safe))
                               (##car _e157713157832_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157711157837_))
                            (let ((_e157716157840_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl157711157837_))))
                              (let ((_tl157714157845_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157716157840_)))
                                    (_hd157715157843_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157716157840_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd157715157843_))
                                    (let ((_e157719157848_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd157715157843_))))
                                      (let ((_tl157717157853_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157719157848_)))
                                            (_hd157718157851_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157719157848_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157717157853_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl157714157845_))
                                                (let ((_e157722157856_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl157714157845_))))
                                                  (let ((_tl157720157861_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e157722157856_)))
                                                        (_hd157721157859_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e157722157856_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl157720157861_))
                                                        (___kont158133158134_
                                                         _hd157718157851_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd157715157843_))
                                                            (let ((___splice158137158138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd157715157843_ '0))))
                      (let ((_tl157732157769_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158137158138_ '1)))
                            (_target157730157767_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158137158138_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl157732157769_))
                            (___match158186158187_
                             _e157713157832_
                             _hd157712157835_
                             _tl157711157837_
                             _e157716157840_
                             _hd157715157843_
                             _tl157714157845_
                             ___splice158137158138_
                             _target157730157767_
                             _tl157732157769_)
                            (let () (declare (not safe)) (_g157708157746_)))))
                    (let () (declare (not safe)) (_g157708157746_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd157715157843_))
                                                    (let ((___splice158137158138_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd157715157843_
                                                              '0))))
                                                      (let ((_tl157732157769_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice158137158138_ '1)))
                    (_target157730157767_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice158137158138_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl157732157769_))
                    (___match158186158187_
                     _e157713157832_
                     _hd157712157835_
                     _tl157711157837_
                     _e157716157840_
                     _hd157715157843_
                     _tl157714157845_
                     ___splice158137158138_
                     _target157730157767_
                     _tl157732157769_)
                    (let () (declare (not safe)) (_g157708157746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g157708157746_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd157715157843_))
                                                (let ((___splice158137158138_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd157715157843_
                                                          '0))))
                                                  (let ((_tl157732157769_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158137158138_
                                                            '1)))
                                                        (_target157730157767_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158137158138_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl157732157769_))
                                                        (___match158186158187_
                                                         _e157713157832_
                                                         _hd157712157835_
                                                         _tl157711157837_
                                                         _e157716157840_
                                                         _hd157715157843_
                                                         _tl157714157845_
                                                         ___splice158137158138_
                                                         _target157730157767_
                                                         _tl157732157769_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g157708157746_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g157708157746_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd157715157843_))
                                        (let ((___splice158137158138_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd157715157843_
                                                  '0))))
                                          (let ((_tl157732157769_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158137158138_
                                                    '1)))
                                                (_target157730157767_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158137158138_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl157732157769_))
                                                (___match158186158187_
                                                 _e157713157832_
                                                 _hd157712157835_
                                                 _tl157711157837_
                                                 _e157716157840_
                                                 _hd157715157843_
                                                 _tl157714157845_
                                                 ___splice158137158138_
                                                 _target157730157767_
                                                 _tl157732157769_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g157708157746_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g157708157746_))))))
                            (let () (declare (not safe)) (_g157708157746_)))))
                    (let () (declare (not safe)) (_g157708157746_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self157255_ _stx157256_)
        (let* ((___stx158189158190_ _stx157256_)
               (_g157260157362_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx158189158190_)))))
          (let ((___kont158191158192_
                 (lambda (_L157652_ _L157653_ _L157654_ _L157655_ _L157656_)
                   (let ((__tmp158474
                          (let ((__tmp158481
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157655_)))
                                (__tmp158475
                                 (let ((__tmp158480
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157654_)))
                                       (__tmp158476
                                        (let ((__tmp158479
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157653_)))
                                              (__tmp158477
                                               (let ((__tmp158478
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L157652_))))
                                                 (declare (not safe))
                                                 (cons __tmp158478 '()))))
                                          (declare (not safe))
                                          (cons __tmp158479 __tmp158477))))
                                   (declare (not safe))
                                   (cons __tmp158480 __tmp158476))))
                            (declare (not safe))
                            (cons __tmp158481 __tmp158475))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158474))))
                (___kont158193158194_
                 (lambda (_L157478_ _L157479_ _L157480_ _L157481_)
                   (let ((__tmp158482
                          (let ((__tmp158488
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157480_)))
                                (__tmp158483
                                 (let ((__tmp158487
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157479_)))
                                       (__tmp158484
                                        (let ((__tmp158486
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157478_)))
                                              (__tmp158485
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp158486 __tmp158485))))
                                   (declare (not safe))
                                   (cons __tmp158487 __tmp158484))))
                            (declare (not safe))
                            (cons __tmp158488 __tmp158483))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158482))))
                (___kont158195158196_ (lambda () '(begin))))
            (let ((___match158324158325_
                   (lambda (_e157269157524_
                            _hd157268157527_
                            _tl157267157529_
                            _e157272157532_
                            _hd157271157535_
                            _tl157270157537_
                            _e157275157540_
                            _hd157274157543_
                            _tl157273157545_
                            _e157278157548_
                            _hd157277157551_
                            _tl157276157553_
                            _e157281157556_
                            _hd157280157559_
                            _tl157279157561_
                            _e157284157564_
                            _hd157283157567_
                            _tl157282157569_
                            _e157287157572_
                            _hd157286157575_
                            _tl157285157577_
                            _e157290157580_
                            _hd157289157583_
                            _tl157288157585_
                            _e157293157588_
                            _hd157292157591_
                            _tl157291157593_
                            _e157296157596_
                            _hd157295157599_
                            _tl157294157601_
                            _e157299157604_
                            _hd157298157607_
                            _tl157297157609_
                            _e157302157612_
                            _hd157301157615_
                            _tl157300157617_
                            _e157305157620_
                            _hd157304157623_
                            _tl157303157625_
                            _e157308157628_
                            _hd157307157631_
                            _tl157306157633_
                            _e157311157636_
                            _hd157310157639_
                            _tl157309157641_
                            _e157314157644_
                            _hd157313157647_
                            _tl157312157649_)
                     (let ((_L157652_ _hd157313157647_)
                           (_L157653_ _hd157304157623_)
                           (_L157654_ _hd157295157599_)
                           (_L157655_ _hd157286157575_)
                           (_L157656_ _hd157277157551_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L157656_
                              'bind-method!))
                           (___kont158191158192_
                            _L157652_
                            _L157653_
                            _L157654_
                            _L157655_
                            _L157656_)
                           (___kont158195158196_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx158189158190_))
                  (let ((_e157269157524_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx158189158190_))))
                    (let ((_tl157267157529_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157269157524_)))
                          (_hd157268157527_
                           (let ()
                             (declare (not safe))
                             (##car _e157269157524_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl157267157529_))
                          (let ((_e157272157532_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl157267157529_))))
                            (let ((_tl157270157537_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157272157532_)))
                                  (_hd157271157535_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157272157532_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd157271157535_))
                                  (let ((_e157275157540_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd157271157535_))))
                                    (let ((_tl157273157545_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157275157540_)))
                                          (_hd157274157543_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157275157540_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd157274157543_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd157274157543_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157273157545_))
                                                  (let ((_e157278157548_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157273157545_))))
                                                    (let ((_tl157276157553_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157278157548_)))
                                                          (_hd157277157551_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157278157548_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl157276157553_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl157270157537_))
                      (let ((_e157281157556_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl157270157537_))))
                        (let ((_tl157279157561_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157281157556_)))
                              (_hd157280157559_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157281157556_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd157280157559_))
                              (let ((_e157284157564_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd157280157559_))))
                                (let ((_tl157282157569_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157284157564_)))
                                      (_hd157283157567_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157284157564_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd157283157567_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd157283157567_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl157282157569_))
                                              (let ((_e157287157572_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl157282157569_))))
                                                (let ((_tl157285157577_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e157287157572_)))
                                                      (_hd157286157575_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e157287157572_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157285157577_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl157279157561_))
                                                          (let ((_e157290157580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl157279157561_))))
                    (let ((_tl157288157585_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157290157580_)))
                          (_hd157289157583_
                           (let ()
                             (declare (not safe))
                             (##car _e157290157580_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd157289157583_))
                          (let ((_e157293157588_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd157289157583_))))
                            (let ((_tl157291157593_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157293157588_)))
                                  (_hd157292157591_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157293157588_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd157292157591_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd157292157591_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl157291157593_))
                                          (let ((_e157296157596_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl157291157593_))))
                                            (let ((_tl157294157601_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e157296157596_)))
                                                  (_hd157295157599_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e157296157596_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl157294157601_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl157288157585_))
                                                      (let ((_e157299157604_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl157288157585_))))
                (let ((_tl157297157609_
                       (let () (declare (not safe)) (##cdr _e157299157604_)))
                      (_hd157298157607_
                       (let () (declare (not safe)) (##car _e157299157604_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd157298157607_))
                      (let ((_e157302157612_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd157298157607_))))
                        (let ((_tl157300157617_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157302157612_)))
                              (_hd157301157615_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157302157612_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd157301157615_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd157301157615_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl157300157617_))
                                      (let ((_e157305157620_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl157300157617_))))
                                        (let ((_tl157303157625_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e157305157620_)))
                                              (_hd157304157623_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e157305157620_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157303157625_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157297157609_))
                                                  (let ((_e157308157628_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157297157609_))))
                                                    (let ((_tl157306157633_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157308157628_)))
                                                          (_hd157307157631_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157308157628_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd157307157631_))
                                                          (let ((_e157311157636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd157307157631_))))
                    (let ((_tl157309157641_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157311157636_)))
                          (_hd157310157639_
                           (let ()
                             (declare (not safe))
                             (##car _e157311157636_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd157310157639_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd157310157639_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl157309157641_))
                                  (let ((_e157314157644_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl157309157641_))))
                                    (let ((_tl157312157649_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157314157644_)))
                                          (_hd157313157647_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157314157644_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl157312157649_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157306157633_))
                                              (___match158324158325_
                                               _e157269157524_
                                               _hd157268157527_
                                               _tl157267157529_
                                               _e157272157532_
                                               _hd157271157535_
                                               _tl157270157537_
                                               _e157275157540_
                                               _hd157274157543_
                                               _tl157273157545_
                                               _e157278157548_
                                               _hd157277157551_
                                               _tl157276157553_
                                               _e157281157556_
                                               _hd157280157559_
                                               _tl157279157561_
                                               _e157284157564_
                                               _hd157283157567_
                                               _tl157282157569_
                                               _e157287157572_
                                               _hd157286157575_
                                               _tl157285157577_
                                               _e157290157580_
                                               _hd157289157583_
                                               _tl157288157585_
                                               _e157293157588_
                                               _hd157292157591_
                                               _tl157291157593_
                                               _e157296157596_
                                               _hd157295157599_
                                               _tl157294157601_
                                               _e157299157604_
                                               _hd157298157607_
                                               _tl157297157609_
                                               _e157302157612_
                                               _hd157301157615_
                                               _tl157300157617_
                                               _e157305157620_
                                               _hd157304157623_
                                               _tl157303157625_
                                               _e157308157628_
                                               _hd157307157631_
                                               _tl157306157633_
                                               _e157311157636_
                                               _hd157310157639_
                                               _tl157309157641_
                                               _e157314157644_
                                               _hd157313157647_
                                               _tl157312157649_)
                                              (___kont158195158196_))
                                          (___kont158195158196_))))
                                  (___kont158195158196_))
                              (___kont158195158196_))
                          (___kont158195158196_))))
                  (___kont158195158196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157297157609_))
                                                      (if (let ((__tmp158489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp158489 'bind-method!))
                  (let ((_L157478_ _hd157304157623_)
                        (_L157479_ _hd157295157599_)
                        (_L157480_ _hd157286157575_)
                        (_L157481_ _hd157277157551_))
                    (___kont158193158194_
                     _L157478_
                     _L157479_
                     _L157480_
                     _L157481_))
                  (___kont158195158196_))
              (___kont158195158196_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158195158196_))))
                                      (___kont158195158196_))
                                  (___kont158195158196_))
                              (___kont158195158196_))))
                      (___kont158195158196_))))
              (___kont158195158196_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158195158196_))))
                                          (___kont158195158196_))
                                      (___kont158195158196_))
                                  (___kont158195158196_))))
                          (___kont158195158196_))))
                  (___kont158195158196_))
              (___kont158195158196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158195158196_))
                                          (___kont158195158196_))
                                      (___kont158195158196_))))
                              (___kont158195158196_))))
                      (___kont158195158196_))
                  (___kont158195158196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158195158196_))
                                              (___kont158195158196_))
                                          (___kont158195158196_))))
                                  (___kont158195158196_))))
                          (___kont158195158196_))))
                  (___kont158195158196_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self157231_)
        (let* ((_self157232157238_ _self157231_)
               (_E157234157242_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157232157238_))))
               (_K157235157247_
                (lambda (_alias-id157245_)
                  (let ((__tmp158490
                         (let ()
                           (declare (not safe))
                           (cons _alias-id157245_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp158490)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157232157238_ 'gxc#!alias::t))
              (let* ((_e157236157250_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157232157238_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id157253_ _e157236157250_))
                (declare (not safe))
                (_K157235157247_ _alias-id157253_))
              (let () (declare (not safe)) (_E157234157242_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self157015_)
        (let* ((_self157016157032_ _self157015_)
               (_E157018157036_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157016157032_))))
               (_K157019157051_
                (lambda (_methods157039_
                         _metaclass157040_
                         _system?157041_
                         _final?157042_
                         _struct?157043_
                         _constructor157044_
                         _fields157045_
                         _slots157046_
                         _precendence-list157047_
                         _super157048_
                         _id157049_)
                  (let ((__tmp158491
                         (let ((__tmp158492
                                (let ((__tmp158493
                                       (let ((__tmp158494
                                              (let ((__tmp158495
                                                     (let ((__tmp158496
                                                            (let ((__tmp158497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp158498
                                  (let ((__tmp158499
                                         (let ((__tmp158500
                                                (let ((__tmp158501
                                                       (let ((__tmp158502
                                                              (if _methods157039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (hash->list _methods157039_))
                          '#f)))
                 (declare (not safe))
                 (cons __tmp158502 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _metaclass157040_
                                                        __tmp158501))))
                                           (declare (not safe))
                                           (cons _system?157041_
                                                 __tmp158500))))
                                    (declare (not safe))
                                    (cons _final?157042_ __tmp158499))))
                             (declare (not safe))
                             (cons _struct?157043_ __tmp158498))))
                      (declare (not safe))
                      (cons _constructor157044_ __tmp158497))))
               (declare (not safe))
               (cons _fields157045_ __tmp158496))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots157046_
                                                      __tmp158495))))
                                         (declare (not safe))
                                         (cons _precendence-list157047_
                                               __tmp158494))))
                                  (declare (not safe))
                                  (cons _super157048_ __tmp158493))))
                           (declare (not safe))
                           (cons _id157049_ __tmp158492))))
                    (declare (not safe))
                    (cons '@class __tmp158491)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157016157032_ 'gxc#!class::t))
              (let* ((_e157020157054_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157016157032_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id157057_ _e157020157054_)
                     (_e157021157059_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157016157032_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super157062_ _e157021157059_)
                     (_e157022157064_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157016157032_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list157067_ _e157022157064_)
                     (_e157023157069_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157016157032_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots157072_ _e157023157069_)
                     (_e157024157074_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157016157032_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields157077_ _e157024157074_)
                     (_e157025157079_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157016157032_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor157082_ _e157025157079_)
                     (_e157026157084_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157016157032_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?157087_ _e157026157084_)
                     (_e157027157089_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157016157032_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?157092_ _e157027157089_)
                     (_e157028157094_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157016157032_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_system?157097_ _e157028157094_)
                     (_e157029157099_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157016157032_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_metaclass157102_ _e157029157099_)
                     (_e157030157104_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157016157032_
                         '11
                         gxc#!class::t
                         '#f)))
                     (_methods157107_ _e157030157104_))
                (declare (not safe))
                (_K157019157051_
                 _methods157107_
                 _metaclass157102_
                 _system?157097_
                 _final?157092_
                 _struct?157087_
                 _constructor157082_
                 _fields157077_
                 _slots157072_
                 _precendence-list157067_
                 _super157062_
                 _id157057_))
              (let () (declare (not safe)) (_E157018157036_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self156869_)
        (let* ((_self156870156876_ _self156869_)
               (_E156872156880_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156870156876_))))
               (_K156873156885_
                (lambda (_klass-id156883_)
                  (let ((__tmp158503
                         (let ()
                           (declare (not safe))
                           (cons _klass-id156883_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp158503)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156870156876_
                 'gxc#!predicate::t))
              (let* ((_e156874156888_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156870156876_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156891_ _e156874156888_))
                (declare (not safe))
                (_K156873156885_ _klass-id156891_))
              (let () (declare (not safe)) (_E156872156880_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self156723_)
        (let* ((_self156724156730_ _self156723_)
               (_E156726156734_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156724156730_))))
               (_K156727156739_
                (lambda (_klass-id156737_)
                  (let ((__tmp158504
                         (let ()
                           (declare (not safe))
                           (cons _klass-id156737_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp158504)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156724156730_
                 'gxc#!constructor::t))
              (let* ((_e156728156742_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156724156730_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156745_ _e156728156742_))
                (declare (not safe))
                (_K156727156739_ _klass-id156745_))
              (let () (declare (not safe)) (_E156726156734_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self156563_)
        (let* ((_self156564156572_ _self156563_)
               (_E156566156576_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156564156572_))))
               (_K156567156583_
                (lambda (_checked?156579_ _slot156580_ _klass-id156581_)
                  (let ((__tmp158505
                         (let ((__tmp158506
                                (let ((__tmp158507
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156579_ '()))))
                                  (declare (not safe))
                                  (cons _slot156580_ __tmp158507))))
                           (declare (not safe))
                           (cons _klass-id156581_ __tmp158506))))
                    (declare (not safe))
                    (cons '@accessor __tmp158505)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156564156572_
                 'gxc#!accessor::t))
              (let* ((_e156568156586_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156564156572_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156589_ _e156568156586_)
                     (_e156569156591_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156564156572_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot156594_ _e156569156591_)
                     (_e156570156596_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156564156572_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?156599_ _e156570156596_))
                (declare (not safe))
                (_K156567156583_
                 _checked?156599_
                 _slot156594_
                 _klass-id156589_))
              (let () (declare (not safe)) (_E156566156576_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self156403_)
        (let* ((_self156404156412_ _self156403_)
               (_E156406156416_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156404156412_))))
               (_K156407156423_
                (lambda (_checked?156419_ _slot156420_ _klass-id156421_)
                  (let ((__tmp158508
                         (let ((__tmp158509
                                (let ((__tmp158510
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156419_ '()))))
                                  (declare (not safe))
                                  (cons _slot156420_ __tmp158510))))
                           (declare (not safe))
                           (cons _klass-id156421_ __tmp158509))))
                    (declare (not safe))
                    (cons '@mutator __tmp158508)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156404156412_ 'gxc#!mutator::t))
              (let* ((_e156408156426_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156404156412_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156429_ _e156408156426_)
                     (_e156409156431_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156404156412_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot156434_ _e156409156431_)
                     (_e156410156436_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156404156412_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?156439_ _e156410156436_))
                (declare (not safe))
                (_K156407156423_
                 _checked?156439_
                 _slot156434_
                 _klass-id156429_))
              (let () (declare (not safe)) (_E156406156416_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self156229_)
        (let* ((_self156230156240_ _self156229_)
               (_E156232156244_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156230156240_))))
               (_K156233156255_
                (lambda (_typedecl156247_
                         _inline156248_
                         _dispatch156249_
                         _arity156250_)
                  (if _inline156248_
                      (let ((_$e156252_ _typedecl156247_))
                        (if _$e156252_
                            _$e156252_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp158511
                             (let ((__tmp158512
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch156249_ '()))))
                               (declare (not safe))
                               (cons _arity156250_ __tmp158512))))
                        (declare (not safe))
                        (cons '@lambda __tmp158511))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156230156240_ 'gxc#!lambda::t))
              (let* ((_e156234156258_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156230156240_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156235156261_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156230156240_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity156264_ _e156235156261_)
                     (_e156236156266_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156230156240_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch156269_ _e156236156266_)
                     (_e156237156271_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156230156240_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline156274_ _e156237156271_)
                     (_e156238156276_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156230156240_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl156279_ _e156238156276_))
                (declare (not safe))
                (_K156233156255_
                 _typedecl156279_
                 _inline156274_
                 _dispatch156269_
                 _arity156264_))
              (let () (declare (not safe)) (_E156232156244_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self156040_)
        (letrec ((_clause-e156042_
                  (lambda (_clause156072_)
                    (let* ((_clause156073156081_ _clause156072_)
                           (_E156075156085_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause156073156081_))))
                           (_K156076156091_
                            (lambda (_dispatch156088_ _arity156089_)
                              (let ((__tmp158513
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch156088_ '()))))
                                (declare (not safe))
                                (cons _arity156089_ __tmp158513)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause156073156081_
                             'gxc#!lambda::t))
                          (let* ((_e156077156094_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156073156081_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e156078156097_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156073156081_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity156100_ _e156078156097_)
                                 (_e156079156102_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156073156081_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch156105_ _e156079156102_))
                            (declare (not safe))
                            (_K156076156091_ _dispatch156105_ _arity156100_))
                          (let () (declare (not safe)) (_E156075156085_)))))))
          (let* ((_self156043156050_ _self156040_)
                 (_E156045156054_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self156043156050_))))
                 (_K156046156061_
                  (lambda (_clauses156057_)
                    (let ((_clauses156059_
                           (map _clause-e156042_ _clauses156057_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses156059_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self156043156050_
                   'gxc#!case-lambda::t))
                (let* ((_e156047156064_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156043156050_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e156048156067_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156043156050_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses156070_ _e156048156067_))
                  (declare (not safe))
                  (_K156046156061_ _clauses156070_))
                (let () (declare (not safe)) (_E156045156054_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self155883_)
        (let* ((_self155884155892_ _self155883_)
               (_E155886155896_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155884155892_))))
               (_K155887155902_
                (lambda (_dispatch155899_ _table155900_)
                  (let ((__tmp158514
                         (let ((__tmp158515
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch155899_ '()))))
                           (declare (not safe))
                           (cons _table155900_ __tmp158515))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp158514)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155884155892_
                 'gxc#!kw-lambda::t))
              (let* ((_e155888155905_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155884155892_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e155889155908_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155884155892_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table155911_ _e155889155908_)
                     (_e155890155913_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155884155892_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch155916_ _e155890155913_))
                (declare (not safe))
                (_K155887155902_ _dispatch155916_ _table155911_))
              (let () (declare (not safe)) (_E155886155896_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self155726_)
        (let* ((_self155727155735_ _self155726_)
               (_E155729155739_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155727155735_))))
               (_K155730155745_
                (lambda (_main155742_ _keys155743_)
                  (let ((__tmp158516
                         (let ((__tmp158517
                                (let ()
                                  (declare (not safe))
                                  (cons _main155742_ '()))))
                           (declare (not safe))
                           (cons _keys155743_ __tmp158517))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp158516)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155727155735_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e155731155748_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155727155735_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e155732155751_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155727155735_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys155754_ _e155732155751_)
                     (_e155733155756_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155727155735_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main155759_ _e155733155756_))
                (declare (not safe))
                (_K155730155745_ _main155759_ _keys155754_))
              (let () (declare (not safe)) (_E155729155739_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
