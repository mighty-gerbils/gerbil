(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710715080)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj158422
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj158422)
               __obj158422)))))
    (define gxc#optimize!
      (lambda (_ctx158115_)
        (let ((__tmp158428
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx158115_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx158115_))
                 (let ((__tmp158430
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp158429
                        (##structure-ref
                         _ctx158115_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp158430 __tmp158429 '#t))
                 (let ((_code158118_
                        (let ((__tmp158431
                               (##structure-ref
                                _ctx158115_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp158431))))
                   (##structure-set!
                    _ctx158115_
                    _code158118_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp158427 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158426 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp158428
           gxc#current-compile-mutators
           __tmp158427
           gxc#current-compile-local-type
           __tmp158426))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx158104_)
        (letrec ((_load-it!158106_
                  (lambda (_id158113_)
                    (if (let ((__tmp158433
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp158433 _id158113_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id158113_))
                          (let ((__tmp158432
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp158432 _id158113_ '#t)))))))
          (let* ((_modid158108_
                  (##structure-ref _ctx158104_ '1 gx#expander-context::t '#f))
                 (_modid-str158110_ (symbol->string _modid158108_)))
            (if (let ()
                  (declare (not safe))
                  (string-prefix? '"gerbil/core" _modid-str158110_))
                (let ()
                  (declare (not safe))
                  (_load-it!158106_ 'gerbil/builtin))
                (for-each
                 _load-it!158106_
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
      (lambda (_ctx158049_)
        (letrec* ((_deps158051_
                   (let* ((_imports158095_
                           (##structure-ref
                            _ctx158049_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e158097_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx158049_))))
                     (if _$e158097_
                         ((lambda (_g158099158101_)
                            (let ()
                              (declare (not safe))
                              (cons _g158099158101_ _imports158095_)))
                          _$e158097_)
                         _imports158095_))))
          (let _lp158053_ ((_rest158055_ _deps158051_))
            (let* ((_rest158056158064_ _rest158055_)
                   (_else158058158072_ (lambda () '#!void))
                   (_K158060158083_
                    (lambda (_rest158075_ _hd158076_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd158076_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp158447
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp158446
                                       (##structure-ref
                                        _hd158076_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp158447 __tmp158446))
                                '#!void
                                (begin
                                  (let ((_$e158078_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd158076_))))
                                    (if _$e158078_
                                        ((lambda (_pre158081_)
                                           (let ((__tmp158444
                                                  (let ((__tmp158445
                                                         (##structure-ref
                                                          _hd158076_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre158081_
                                                          __tmp158445))))
                                             (declare (not safe))
                                             (_lp158053_ __tmp158444)))
                                         _$e158078_)
                                        (let ((__tmp158443
                                               (##structure-ref
                                                _hd158076_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp158053_ __tmp158443))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd158076_))))
                            (let ()
                              (declare (not safe))
                              (_lp158053_ _rest158075_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd158076_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp158442
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp158441
                                           (##structure-ref
                                            _hd158076_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp158442 __tmp158441))
                                    '#!void
                                    (begin
                                      (let ((__tmp158440
                                             (##structure-ref
                                              _hd158076_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp158053_ __tmp158440))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd158076_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp158053_ _rest158075_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd158076_
                                     'gx#module-import::t))
                                  (let ((__tmp158438
                                         (let ((__tmp158439
                                                (##direct-structure-ref
                                                 _hd158076_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp158439 _rest158075_))))
                                    (declare (not safe))
                                    (_lp158053_ __tmp158438))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd158076_
                                         'gx#module-export::t))
                                      (let ((__tmp158436
                                             (let ((__tmp158437
                                                    (##direct-structure-ref
                                                     _hd158076_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp158437
                                                     _rest158075_))))
                                        (declare (not safe))
                                        (_lp158053_ __tmp158436))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd158076_
                                             'gx#import-set::t))
                                          (let ((__tmp158434
                                                 (let ((__tmp158435
                                                        (##direct-structure-ref
                                                         _hd158076_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp158435
                                                         _rest158075_))))
                                            (declare (not safe))
                                            (_lp158053_ __tmp158434))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd158076_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest158056158064_))
                  (let ((_hd158061158086_
                         (let ()
                           (declare (not safe))
                           (##car _rest158056158064_)))
                        (_tl158062158088_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158056158064_))))
                    (let* ((_hd158091_ _hd158061158086_)
                           (_rest158093_ _tl158062158088_))
                      (declare (not safe))
                      (_K158060158083_ _rest158093_ _hd158091_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx158029_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx158029_
                    'gx#module-context::t))
                 (let ((__tmp158448
                        (##structure-ref
                         _ctx158029_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp158448)))
            '#!void
            (let* ((_ht158031_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id158033_
                    (##structure-ref
                     _ctx158029_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod158035_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht158031_ _id158033_))))
              (let ((_$e158038_ _mod158035_))
                (if _$e158038_
                    _$e158038_
                    (let* ((_mod158041_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx158029_)))
                           (_val158046_
                            (let ((_$e158043_ _mod158041_))
                              (if _$e158043_ _$e158043_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht158031_ _id158033_ _val158046_))
                      _val158046_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx158027_)
        (if (##structure-ref _ctx158027_ '1 gx#expander-context::t '#f)
            (let ((__tmp158449
                   (##structure-ref
                    _ctx158027_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp158449))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id158004_)
        (letrec ((_catch-e158006_
                  (lambda (_exn158025_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id158004_))
                          (let ()
                            (declare (not safe))
                            (display-exception _exn158025_)))
                        '#!void)
                    '#f))
                 (_import-e158007_
                  (lambda ()
                    (let* ((_str-id158010_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id158004_))
                             '".ssxi"))
                           (_artefact-path158018_
                            (let ((_odir158011158013_
                                   (gxc#current-compile-output-dir)))
                              (if _odir158011158013_
                                  (let ((_odir158016_ _odir158011158013_))
                                    (path-expand
                                     (string-append _str-id158010_ '".ss")
                                     _odir158016_))
                                  '#f)))
                           (_library-path158020_
                            (string->symbol
                             (string-append '":" _str-id158010_ '".ss")))
                           (_ssxi-path158022_
                            (if (and _artefact-path158018_
                                     (file-exists? _artefact-path158018_))
                                _artefact-path158018_
                                _library-path158020_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path158022_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path158022_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e158006_ _import-e158007_)))))
    (define gxc#optimize-source
      (lambda (_stx157995_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx157995_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx157995_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx157995_))
        (let* ((_stx157997_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx157995_)))
               (_stx157999_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx157997_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx157999_))
          (let ((_stx158002_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx157999_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx158002_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp158452 (list gxc#::generate-runtime-empty::t))
            (__tmp158450
             (let ((__tmp158451
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp158451 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp158452
         '()
         __tmp158450
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _$args157992_
        (apply make-instance gxc#::generate-ssxi::t _$args157992_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp158453
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
        (make-promise __tmp158453)))
    (define gxc#apply-generate-ssxi
      (lambda (_stx157984_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_self157987_
                (let ((__obj158424
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj158424))
               (__tmp158454
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self157987_ _stx157984_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp158454
           gxc#current-compile-method
           _self157987_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self157944_ _stx157945_)
        (let* ((_g157947157957_
                (lambda (_g157948157954_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g157948157954_))))
               (_g157946157981_
                (lambda (_g157948157960_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g157948157960_))
                      (let ((_e157952157962_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g157948157960_))))
                        (let ((_hd157951157965_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157952157962_)))
                              (_tl157950157967_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157952157962_))))
                          ((lambda (_L157970_)
                             (let ((__tmp158457
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self157944_
                                         _stx157945_))))
                                   (__tmp158455
                                    (let ((__tmp158456
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp158456 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp158457
                                gx#current-expander-phi
                                __tmp158455)))
                           _tl157950157967_)))
                      (let ()
                        (declare (not safe))
                        (_g157947157957_ _g157948157960_))))))
          (declare (not safe))
          (_g157946157981_ _stx157945_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self157883_ _stx157884_)
        (let* ((_g157886157900_
                (lambda (_g157887157897_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g157887157897_))))
               (_g157885157941_
                (lambda (_g157887157903_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g157887157903_))
                      (let ((_e157892157905_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g157887157903_))))
                        (let ((_hd157891157908_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157892157905_)))
                              (_tl157890157910_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157892157905_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl157890157910_))
                              (let ((_e157895157913_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl157890157910_))))
                                (let ((_hd157894157916_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157895157913_)))
                                      (_tl157893157918_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157895157913_))))
                                  ((lambda (_L157921_ _L157922_)
                                     (let* ((_ctx157935_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L157922_)))
                                            (_code157937_
                                             (##structure-ref
                                              _ctx157935_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp158458
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self157883_
                                                   _code157937_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp158458
                                          gx#current-expander-context
                                          _ctx157935_))))
                                   _tl157893157918_
                                   _hd157894157916_)))
                              (let ()
                                (declare (not safe))
                                (_g157886157900_ _g157887157903_)))))
                      (let ()
                        (declare (not safe))
                        (_g157886157900_ _g157887157903_))))))
          (declare (not safe))
          (_g157885157941_ _stx157884_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self157692_ _stx157693_)
        (letrec ((_generate-e157695_
                  (lambda (_id157872_)
                    (let* ((_sym157874_
                            (if (let ((__tmp158459
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp158459))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id157872_))
                                '#f))
                           (_$e157876_
                            (if _sym157874_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym157874_))
                                '#f)))
                      (if _$e157876_
                          ((lambda (_type157879_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym157874_))
                             (let* ((_typedecl157881_
                                     (let ((__method158425
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type157879_
                                               'typedecl))))
                                       (if __method158425
                                           (__method158425 _type157879_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type157879_
                                                    'typedecl)))))
                                    (__tmp158460
                                     (let ((__tmp158461
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl157881_ '()))))
                                       (declare (not safe))
                                       (cons _sym157874_ __tmp158461))))
                               (declare (not safe))
                               (cons 'declare-type __tmp158460)))
                           _$e157876_)
                          '(begin))))))
          (let* ((___stx158121158122_ _stx157693_)
                 (_g157698157736_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx158121158122_)))))
            (let ((___kont158123158124_
                   (lambda (_L157854_)
                     (let ()
                       (declare (not safe))
                       (_generate-e157695_ _L157854_))))
                  (___kont158125158126_
                   (lambda (_L157789_)
                     (let ((_types157815_
                            (map _generate-e157695_
                                 (let ((__tmp158462
                                        (lambda (_g157807157810_
                                                 _g157808157812_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g157807157810_
                                                  _g157808157812_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp158462 '() _L157789_)))))
                       (declare (not safe))
                       (cons 'begin _types157815_)))))
              (let ((___match158176158177_
                     (lambda (_e157716157741_
                              _hd157715157744_
                              _tl157714157746_
                              _e157719157749_
                              _hd157718157752_
                              _tl157717157754_
                              ___splice158127158128_
                              _target157720157757_
                              _tl157722157759_)
                       (letrec ((_loop157723157762_
                                 (lambda (_hd157721157765_ _id157727157767_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd157721157765_))
                                       (let ((_e157724157770_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd157721157765_))))
                                         (let ((_lp-tl157726157775_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e157724157770_)))
                                               (_lp-hd157725157773_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e157724157770_))))
                                           (let ((__tmp158463
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd157725157773_
                                                          _id157727157767_))))
                                             (declare (not safe))
                                             (_loop157723157762_
                                              _lp-tl157726157775_
                                              __tmp158463))))
                                       (let ((_id157728157778_
                                              (reverse _id157727157767_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl157717157754_))
                                             (let ((_e157731157781_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl157717157754_))))
                                               (let ((_tl157729157786_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e157731157781_)))
                                                     (_hd157730157784_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e157731157781_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl157729157786_))
                                                     (___kont158125158126_
                                                      _id157728157778_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g157698157736_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g157698157736_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop157723157762_ _target157720157757_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx158121158122_))
                    (let ((_e157703157822_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx158121158122_))))
                      (let ((_tl157701157827_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157703157822_)))
                            (_hd157702157825_
                             (let ()
                               (declare (not safe))
                               (##car _e157703157822_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157701157827_))
                            (let ((_e157706157830_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl157701157827_))))
                              (let ((_tl157704157835_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157706157830_)))
                                    (_hd157705157833_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157706157830_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd157705157833_))
                                    (let ((_e157709157838_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd157705157833_))))
                                      (let ((_tl157707157843_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157709157838_)))
                                            (_hd157708157841_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157709157838_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157707157843_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl157704157835_))
                                                (let ((_e157712157846_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl157704157835_))))
                                                  (let ((_tl157710157851_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e157712157846_)))
                                                        (_hd157711157849_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e157712157846_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl157710157851_))
                                                        (___kont158123158124_
                                                         _hd157708157841_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd157705157833_))
                                                            (let ((___splice158127158128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd157705157833_ '0))))
                      (let ((_tl157722157759_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158127158128_ '1)))
                            (_target157720157757_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158127158128_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl157722157759_))
                            (___match158176158177_
                             _e157703157822_
                             _hd157702157825_
                             _tl157701157827_
                             _e157706157830_
                             _hd157705157833_
                             _tl157704157835_
                             ___splice158127158128_
                             _target157720157757_
                             _tl157722157759_)
                            (let () (declare (not safe)) (_g157698157736_)))))
                    (let () (declare (not safe)) (_g157698157736_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd157705157833_))
                                                    (let ((___splice158127158128_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd157705157833_
                                                              '0))))
                                                      (let ((_tl157722157759_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice158127158128_ '1)))
                    (_target157720157757_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice158127158128_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl157722157759_))
                    (___match158176158177_
                     _e157703157822_
                     _hd157702157825_
                     _tl157701157827_
                     _e157706157830_
                     _hd157705157833_
                     _tl157704157835_
                     ___splice158127158128_
                     _target157720157757_
                     _tl157722157759_)
                    (let () (declare (not safe)) (_g157698157736_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g157698157736_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd157705157833_))
                                                (let ((___splice158127158128_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd157705157833_
                                                          '0))))
                                                  (let ((_tl157722157759_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158127158128_
                                                            '1)))
                                                        (_target157720157757_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158127158128_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl157722157759_))
                                                        (___match158176158177_
                                                         _e157703157822_
                                                         _hd157702157825_
                                                         _tl157701157827_
                                                         _e157706157830_
                                                         _hd157705157833_
                                                         _tl157704157835_
                                                         ___splice158127158128_
                                                         _target157720157757_
                                                         _tl157722157759_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g157698157736_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g157698157736_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd157705157833_))
                                        (let ((___splice158127158128_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd157705157833_
                                                  '0))))
                                          (let ((_tl157722157759_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158127158128_
                                                    '1)))
                                                (_target157720157757_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158127158128_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl157722157759_))
                                                (___match158176158177_
                                                 _e157703157822_
                                                 _hd157702157825_
                                                 _tl157701157827_
                                                 _e157706157830_
                                                 _hd157705157833_
                                                 _tl157704157835_
                                                 ___splice158127158128_
                                                 _target157720157757_
                                                 _tl157722157759_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g157698157736_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g157698157736_))))))
                            (let () (declare (not safe)) (_g157698157736_)))))
                    (let () (declare (not safe)) (_g157698157736_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self157245_ _stx157246_)
        (let* ((___stx158179158180_ _stx157246_)
               (_g157250157352_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx158179158180_)))))
          (let ((___kont158181158182_
                 (lambda (_L157642_ _L157643_ _L157644_ _L157645_ _L157646_)
                   (let ((__tmp158464
                          (let ((__tmp158471
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157645_)))
                                (__tmp158465
                                 (let ((__tmp158470
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157644_)))
                                       (__tmp158466
                                        (let ((__tmp158469
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157643_)))
                                              (__tmp158467
                                               (let ((__tmp158468
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L157642_))))
                                                 (declare (not safe))
                                                 (cons __tmp158468 '()))))
                                          (declare (not safe))
                                          (cons __tmp158469 __tmp158467))))
                                   (declare (not safe))
                                   (cons __tmp158470 __tmp158466))))
                            (declare (not safe))
                            (cons __tmp158471 __tmp158465))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158464))))
                (___kont158183158184_
                 (lambda (_L157468_ _L157469_ _L157470_ _L157471_)
                   (let ((__tmp158472
                          (let ((__tmp158478
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157470_)))
                                (__tmp158473
                                 (let ((__tmp158477
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157469_)))
                                       (__tmp158474
                                        (let ((__tmp158476
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157468_)))
                                              (__tmp158475
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp158476 __tmp158475))))
                                   (declare (not safe))
                                   (cons __tmp158477 __tmp158474))))
                            (declare (not safe))
                            (cons __tmp158478 __tmp158473))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158472))))
                (___kont158185158186_ (lambda () '(begin))))
            (let ((___match158314158315_
                   (lambda (_e157259157514_
                            _hd157258157517_
                            _tl157257157519_
                            _e157262157522_
                            _hd157261157525_
                            _tl157260157527_
                            _e157265157530_
                            _hd157264157533_
                            _tl157263157535_
                            _e157268157538_
                            _hd157267157541_
                            _tl157266157543_
                            _e157271157546_
                            _hd157270157549_
                            _tl157269157551_
                            _e157274157554_
                            _hd157273157557_
                            _tl157272157559_
                            _e157277157562_
                            _hd157276157565_
                            _tl157275157567_
                            _e157280157570_
                            _hd157279157573_
                            _tl157278157575_
                            _e157283157578_
                            _hd157282157581_
                            _tl157281157583_
                            _e157286157586_
                            _hd157285157589_
                            _tl157284157591_
                            _e157289157594_
                            _hd157288157597_
                            _tl157287157599_
                            _e157292157602_
                            _hd157291157605_
                            _tl157290157607_
                            _e157295157610_
                            _hd157294157613_
                            _tl157293157615_
                            _e157298157618_
                            _hd157297157621_
                            _tl157296157623_
                            _e157301157626_
                            _hd157300157629_
                            _tl157299157631_
                            _e157304157634_
                            _hd157303157637_
                            _tl157302157639_)
                     (let ((_L157642_ _hd157303157637_)
                           (_L157643_ _hd157294157613_)
                           (_L157644_ _hd157285157589_)
                           (_L157645_ _hd157276157565_)
                           (_L157646_ _hd157267157541_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L157646_
                              'bind-method!))
                           (___kont158181158182_
                            _L157642_
                            _L157643_
                            _L157644_
                            _L157645_
                            _L157646_)
                           (___kont158185158186_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx158179158180_))
                  (let ((_e157259157514_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx158179158180_))))
                    (let ((_tl157257157519_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157259157514_)))
                          (_hd157258157517_
                           (let ()
                             (declare (not safe))
                             (##car _e157259157514_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl157257157519_))
                          (let ((_e157262157522_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl157257157519_))))
                            (let ((_tl157260157527_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157262157522_)))
                                  (_hd157261157525_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157262157522_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd157261157525_))
                                  (let ((_e157265157530_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd157261157525_))))
                                    (let ((_tl157263157535_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157265157530_)))
                                          (_hd157264157533_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157265157530_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd157264157533_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd157264157533_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157263157535_))
                                                  (let ((_e157268157538_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157263157535_))))
                                                    (let ((_tl157266157543_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157268157538_)))
                                                          (_hd157267157541_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157268157538_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl157266157543_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl157260157527_))
                      (let ((_e157271157546_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl157260157527_))))
                        (let ((_tl157269157551_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157271157546_)))
                              (_hd157270157549_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157271157546_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd157270157549_))
                              (let ((_e157274157554_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd157270157549_))))
                                (let ((_tl157272157559_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157274157554_)))
                                      (_hd157273157557_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157274157554_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd157273157557_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd157273157557_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl157272157559_))
                                              (let ((_e157277157562_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl157272157559_))))
                                                (let ((_tl157275157567_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e157277157562_)))
                                                      (_hd157276157565_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e157277157562_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157275157567_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl157269157551_))
                                                          (let ((_e157280157570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl157269157551_))))
                    (let ((_tl157278157575_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157280157570_)))
                          (_hd157279157573_
                           (let ()
                             (declare (not safe))
                             (##car _e157280157570_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd157279157573_))
                          (let ((_e157283157578_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd157279157573_))))
                            (let ((_tl157281157583_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157283157578_)))
                                  (_hd157282157581_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157283157578_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd157282157581_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd157282157581_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl157281157583_))
                                          (let ((_e157286157586_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl157281157583_))))
                                            (let ((_tl157284157591_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e157286157586_)))
                                                  (_hd157285157589_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e157286157586_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl157284157591_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl157278157575_))
                                                      (let ((_e157289157594_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl157278157575_))))
                (let ((_tl157287157599_
                       (let () (declare (not safe)) (##cdr _e157289157594_)))
                      (_hd157288157597_
                       (let () (declare (not safe)) (##car _e157289157594_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd157288157597_))
                      (let ((_e157292157602_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd157288157597_))))
                        (let ((_tl157290157607_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157292157602_)))
                              (_hd157291157605_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157292157602_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd157291157605_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd157291157605_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl157290157607_))
                                      (let ((_e157295157610_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl157290157607_))))
                                        (let ((_tl157293157615_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e157295157610_)))
                                              (_hd157294157613_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e157295157610_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157293157615_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157287157599_))
                                                  (let ((_e157298157618_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157287157599_))))
                                                    (let ((_tl157296157623_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157298157618_)))
                                                          (_hd157297157621_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157298157618_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd157297157621_))
                                                          (let ((_e157301157626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd157297157621_))))
                    (let ((_tl157299157631_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157301157626_)))
                          (_hd157300157629_
                           (let ()
                             (declare (not safe))
                             (##car _e157301157626_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd157300157629_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd157300157629_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl157299157631_))
                                  (let ((_e157304157634_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl157299157631_))))
                                    (let ((_tl157302157639_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157304157634_)))
                                          (_hd157303157637_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157304157634_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl157302157639_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157296157623_))
                                              (___match158314158315_
                                               _e157259157514_
                                               _hd157258157517_
                                               _tl157257157519_
                                               _e157262157522_
                                               _hd157261157525_
                                               _tl157260157527_
                                               _e157265157530_
                                               _hd157264157533_
                                               _tl157263157535_
                                               _e157268157538_
                                               _hd157267157541_
                                               _tl157266157543_
                                               _e157271157546_
                                               _hd157270157549_
                                               _tl157269157551_
                                               _e157274157554_
                                               _hd157273157557_
                                               _tl157272157559_
                                               _e157277157562_
                                               _hd157276157565_
                                               _tl157275157567_
                                               _e157280157570_
                                               _hd157279157573_
                                               _tl157278157575_
                                               _e157283157578_
                                               _hd157282157581_
                                               _tl157281157583_
                                               _e157286157586_
                                               _hd157285157589_
                                               _tl157284157591_
                                               _e157289157594_
                                               _hd157288157597_
                                               _tl157287157599_
                                               _e157292157602_
                                               _hd157291157605_
                                               _tl157290157607_
                                               _e157295157610_
                                               _hd157294157613_
                                               _tl157293157615_
                                               _e157298157618_
                                               _hd157297157621_
                                               _tl157296157623_
                                               _e157301157626_
                                               _hd157300157629_
                                               _tl157299157631_
                                               _e157304157634_
                                               _hd157303157637_
                                               _tl157302157639_)
                                              (___kont158185158186_))
                                          (___kont158185158186_))))
                                  (___kont158185158186_))
                              (___kont158185158186_))
                          (___kont158185158186_))))
                  (___kont158185158186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157287157599_))
                                                      (if (let ((__tmp158479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp158479 'bind-method!))
                  (let ((_L157468_ _hd157294157613_)
                        (_L157469_ _hd157285157589_)
                        (_L157470_ _hd157276157565_)
                        (_L157471_ _hd157267157541_))
                    (___kont158183158184_
                     _L157468_
                     _L157469_
                     _L157470_
                     _L157471_))
                  (___kont158185158186_))
              (___kont158185158186_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158185158186_))))
                                      (___kont158185158186_))
                                  (___kont158185158186_))
                              (___kont158185158186_))))
                      (___kont158185158186_))))
              (___kont158185158186_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158185158186_))))
                                          (___kont158185158186_))
                                      (___kont158185158186_))
                                  (___kont158185158186_))))
                          (___kont158185158186_))))
                  (___kont158185158186_))
              (___kont158185158186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158185158186_))
                                          (___kont158185158186_))
                                      (___kont158185158186_))))
                              (___kont158185158186_))))
                      (___kont158185158186_))
                  (___kont158185158186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158185158186_))
                                              (___kont158185158186_))
                                          (___kont158185158186_))))
                                  (___kont158185158186_))))
                          (___kont158185158186_))))
                  (___kont158185158186_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self157221_)
        (let* ((_self157222157228_ _self157221_)
               (_E157224157232_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157222157228_))))
               (_K157225157237_
                (lambda (_alias-id157235_)
                  (let ((__tmp158480
                         (let ()
                           (declare (not safe))
                           (cons _alias-id157235_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp158480)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157222157228_ 'gxc#!alias::t))
              (let* ((_e157226157240_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157222157228_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id157243_ _e157226157240_))
                (declare (not safe))
                (_K157225157237_ _alias-id157243_))
              (let () (declare (not safe)) (_E157224157232_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self157005_)
        (let* ((_self157006157022_ _self157005_)
               (_E157008157026_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157006157022_))))
               (_K157009157041_
                (lambda (_methods157029_
                         _metaclass157030_
                         _system?157031_
                         _final?157032_
                         _struct?157033_
                         _constructor157034_
                         _fields157035_
                         _slots157036_
                         _precendence-list157037_
                         _super157038_
                         _id157039_)
                  (let ((__tmp158481
                         (let ((__tmp158482
                                (let ((__tmp158483
                                       (let ((__tmp158484
                                              (let ((__tmp158485
                                                     (let ((__tmp158486
                                                            (let ((__tmp158487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp158488
                                  (let ((__tmp158489
                                         (let ((__tmp158490
                                                (let ((__tmp158491
                                                       (let ((__tmp158492
                                                              (if _methods157029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (hash->list _methods157029_))
                          '#f)))
                 (declare (not safe))
                 (cons __tmp158492 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _metaclass157030_
                                                        __tmp158491))))
                                           (declare (not safe))
                                           (cons _system?157031_
                                                 __tmp158490))))
                                    (declare (not safe))
                                    (cons _final?157032_ __tmp158489))))
                             (declare (not safe))
                             (cons _struct?157033_ __tmp158488))))
                      (declare (not safe))
                      (cons _constructor157034_ __tmp158487))))
               (declare (not safe))
               (cons _fields157035_ __tmp158486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots157036_
                                                      __tmp158485))))
                                         (declare (not safe))
                                         (cons _precendence-list157037_
                                               __tmp158484))))
                                  (declare (not safe))
                                  (cons _super157038_ __tmp158483))))
                           (declare (not safe))
                           (cons _id157039_ __tmp158482))))
                    (declare (not safe))
                    (cons '@class __tmp158481)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157006157022_ 'gxc#!class::t))
              (let* ((_e157010157044_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157006157022_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id157047_ _e157010157044_)
                     (_e157011157049_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157006157022_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super157052_ _e157011157049_)
                     (_e157012157054_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157006157022_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list157057_ _e157012157054_)
                     (_e157013157059_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157006157022_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots157062_ _e157013157059_)
                     (_e157014157064_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157006157022_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields157067_ _e157014157064_)
                     (_e157015157069_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157006157022_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor157072_ _e157015157069_)
                     (_e157016157074_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157006157022_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?157077_ _e157016157074_)
                     (_e157017157079_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157006157022_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?157082_ _e157017157079_)
                     (_e157018157084_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157006157022_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_system?157087_ _e157018157084_)
                     (_e157019157089_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157006157022_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_metaclass157092_ _e157019157089_)
                     (_e157020157094_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157006157022_
                         '11
                         gxc#!class::t
                         '#f)))
                     (_methods157097_ _e157020157094_))
                (declare (not safe))
                (_K157009157041_
                 _methods157097_
                 _metaclass157092_
                 _system?157087_
                 _final?157082_
                 _struct?157077_
                 _constructor157072_
                 _fields157067_
                 _slots157062_
                 _precendence-list157057_
                 _super157052_
                 _id157047_))
              (let () (declare (not safe)) (_E157008157026_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self156859_)
        (let* ((_self156860156866_ _self156859_)
               (_E156862156870_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156860156866_))))
               (_K156863156875_
                (lambda (_klass-id156873_)
                  (let ((__tmp158493
                         (let ()
                           (declare (not safe))
                           (cons _klass-id156873_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp158493)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156860156866_
                 'gxc#!predicate::t))
              (let* ((_e156864156878_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156860156866_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156881_ _e156864156878_))
                (declare (not safe))
                (_K156863156875_ _klass-id156881_))
              (let () (declare (not safe)) (_E156862156870_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self156713_)
        (let* ((_self156714156720_ _self156713_)
               (_E156716156724_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156714156720_))))
               (_K156717156729_
                (lambda (_klass-id156727_)
                  (let ((__tmp158494
                         (let ()
                           (declare (not safe))
                           (cons _klass-id156727_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp158494)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156714156720_
                 'gxc#!constructor::t))
              (let* ((_e156718156732_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156714156720_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156735_ _e156718156732_))
                (declare (not safe))
                (_K156717156729_ _klass-id156735_))
              (let () (declare (not safe)) (_E156716156724_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self156553_)
        (let* ((_self156554156562_ _self156553_)
               (_E156556156566_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156554156562_))))
               (_K156557156573_
                (lambda (_checked?156569_ _slot156570_ _klass-id156571_)
                  (let ((__tmp158495
                         (let ((__tmp158496
                                (let ((__tmp158497
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156569_ '()))))
                                  (declare (not safe))
                                  (cons _slot156570_ __tmp158497))))
                           (declare (not safe))
                           (cons _klass-id156571_ __tmp158496))))
                    (declare (not safe))
                    (cons '@accessor __tmp158495)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156554156562_
                 'gxc#!accessor::t))
              (let* ((_e156558156576_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156554156562_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156579_ _e156558156576_)
                     (_e156559156581_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156554156562_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot156584_ _e156559156581_)
                     (_e156560156586_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156554156562_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?156589_ _e156560156586_))
                (declare (not safe))
                (_K156557156573_
                 _checked?156589_
                 _slot156584_
                 _klass-id156579_))
              (let () (declare (not safe)) (_E156556156566_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self156393_)
        (let* ((_self156394156402_ _self156393_)
               (_E156396156406_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156394156402_))))
               (_K156397156413_
                (lambda (_checked?156409_ _slot156410_ _klass-id156411_)
                  (let ((__tmp158498
                         (let ((__tmp158499
                                (let ((__tmp158500
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156409_ '()))))
                                  (declare (not safe))
                                  (cons _slot156410_ __tmp158500))))
                           (declare (not safe))
                           (cons _klass-id156411_ __tmp158499))))
                    (declare (not safe))
                    (cons '@mutator __tmp158498)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156394156402_ 'gxc#!mutator::t))
              (let* ((_e156398156416_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156394156402_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156419_ _e156398156416_)
                     (_e156399156421_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156394156402_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot156424_ _e156399156421_)
                     (_e156400156426_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156394156402_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?156429_ _e156400156426_))
                (declare (not safe))
                (_K156397156413_
                 _checked?156429_
                 _slot156424_
                 _klass-id156419_))
              (let () (declare (not safe)) (_E156396156406_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self156219_)
        (let* ((_self156220156230_ _self156219_)
               (_E156222156234_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156220156230_))))
               (_K156223156245_
                (lambda (_typedecl156237_
                         _inline156238_
                         _dispatch156239_
                         _arity156240_)
                  (if _inline156238_
                      (let ((_$e156242_ _typedecl156237_))
                        (if _$e156242_
                            _$e156242_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp158501
                             (let ((__tmp158502
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch156239_ '()))))
                               (declare (not safe))
                               (cons _arity156240_ __tmp158502))))
                        (declare (not safe))
                        (cons '@lambda __tmp158501))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156220156230_ 'gxc#!lambda::t))
              (let* ((_e156224156248_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156220156230_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156225156251_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156220156230_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity156254_ _e156225156251_)
                     (_e156226156256_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156220156230_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch156259_ _e156226156256_)
                     (_e156227156261_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156220156230_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline156264_ _e156227156261_)
                     (_e156228156266_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156220156230_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl156269_ _e156228156266_))
                (declare (not safe))
                (_K156223156245_
                 _typedecl156269_
                 _inline156264_
                 _dispatch156259_
                 _arity156254_))
              (let () (declare (not safe)) (_E156222156234_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self156030_)
        (letrec ((_clause-e156032_
                  (lambda (_clause156062_)
                    (let* ((_clause156063156071_ _clause156062_)
                           (_E156065156075_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause156063156071_))))
                           (_K156066156081_
                            (lambda (_dispatch156078_ _arity156079_)
                              (let ((__tmp158503
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch156078_ '()))))
                                (declare (not safe))
                                (cons _arity156079_ __tmp158503)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause156063156071_
                             'gxc#!lambda::t))
                          (let* ((_e156067156084_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156063156071_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e156068156087_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156063156071_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity156090_ _e156068156087_)
                                 (_e156069156092_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156063156071_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch156095_ _e156069156092_))
                            (declare (not safe))
                            (_K156066156081_ _dispatch156095_ _arity156090_))
                          (let () (declare (not safe)) (_E156065156075_)))))))
          (let* ((_self156033156040_ _self156030_)
                 (_E156035156044_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self156033156040_))))
                 (_K156036156051_
                  (lambda (_clauses156047_)
                    (let ((_clauses156049_
                           (map _clause-e156032_ _clauses156047_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses156049_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self156033156040_
                   'gxc#!case-lambda::t))
                (let* ((_e156037156054_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156033156040_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e156038156057_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156033156040_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses156060_ _e156038156057_))
                  (declare (not safe))
                  (_K156036156051_ _clauses156060_))
                (let () (declare (not safe)) (_E156035156044_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self155873_)
        (let* ((_self155874155882_ _self155873_)
               (_E155876155886_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155874155882_))))
               (_K155877155892_
                (lambda (_dispatch155889_ _table155890_)
                  (let ((__tmp158504
                         (let ((__tmp158505
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch155889_ '()))))
                           (declare (not safe))
                           (cons _table155890_ __tmp158505))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp158504)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155874155882_
                 'gxc#!kw-lambda::t))
              (let* ((_e155878155895_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155874155882_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e155879155898_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155874155882_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table155901_ _e155879155898_)
                     (_e155880155903_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155874155882_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch155906_ _e155880155903_))
                (declare (not safe))
                (_K155877155892_ _dispatch155906_ _table155901_))
              (let () (declare (not safe)) (_E155876155886_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self155716_)
        (let* ((_self155717155725_ _self155716_)
               (_E155719155729_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155717155725_))))
               (_K155720155735_
                (lambda (_main155732_ _keys155733_)
                  (let ((__tmp158506
                         (let ((__tmp158507
                                (let ()
                                  (declare (not safe))
                                  (cons _main155732_ '()))))
                           (declare (not safe))
                           (cons _keys155733_ __tmp158507))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp158506)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155717155725_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e155721155738_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155717155725_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e155722155741_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155717155725_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys155744_ _e155722155741_)
                     (_e155723155746_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155717155725_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main155749_ _e155723155746_))
                (declare (not safe))
                (_K155720155735_ _main155749_ _keys155744_))
              (let () (declare (not safe)) (_E155719155729_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
