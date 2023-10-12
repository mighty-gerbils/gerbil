(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1697117311)
  (begin
    (define __loading-scheme-source (make-parameter '#f))
    (define __init-gx!
      (lambda ()
        (gx#current-expander-marks '())
        (gx#current-expander-phi '0)
        (gx#current-expander-context (gx#make-top-context))
        (gx#current-expander-module-library-path (current-module-library-path))
        (gx#current-expander-module-registry
         (let () (declare (not safe)) (make-table)))
        (gx#current-expander-module-import gx#core-import-module)
        (gx#current-expander-module-eval gx#core-eval-module)
        (gx#current-expander-compile __compile-top)
        (gx#current-expander-eval ##eval)
        (gx#core-bind-root-syntax! ':<root> (gx#make-prelude-context '#f) '#t)
        (__current-context __*top*)
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)))
    (define __load-gxi
      (lambda ()
        (letrec* ((_+readtable+18426_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core18428_ (gx#import-module ':gerbil/core))
                 (_pre18430_ (gx#make-prelude-context _core18428_)))
            (gx#current-expander-module-prelude _pre18430_)
            (gx#core-bind-root-syntax! ':<core> _pre18430_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port18433_)
             (input-port-readtable-set! _port18433_ _+readtable+18426_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port18435_)
             (output-port-readtable-set!
              _port18435_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port18435_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline18423_) '#!void))
    (define load-scheme
      (lambda (_path18418_)
        (let ((__tmp18437
               (lambda ()
                 (let ((__tmp18438 (lambda _args18421_ '#f)))
                   (declare (not safe))
                   (##load _path18418_ __tmp18438 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp18437
           __loading-scheme-source
           _path18418_))))
    (define load-path
      (lambda ()
        (values (let () (declare (not safe)) (current-module-library-path))
                (let ()
                  (declare (not safe))
                  (gx#current-expander-module-library-path)))))
    (define library-load-path (lambda () (current-module-library-path)))
    (define expander-load-path
      (lambda () (gx#current-expander-module-library-path)))
    (define add-load-path
      (lambda _paths18413_
        (apply add-library-load-path _paths18413_)
        (apply add-expander-load-path _paths18413_)))
    (define add-library-load-path
      (lambda _paths18402_
        (let* ((_current18404_ (current-module-library-path))
               (_paths18406_ (map path-expand _paths18402_))
               (_paths18410_
                (let ((__tmp18439
                       (lambda (_x18408_)
                         (let ((__tmp18440 (member _x18408_ _current18404_)))
                           (declare (not safe))
                           (not __tmp18440)))))
                  (declare (not safe))
                  (filter __tmp18439 _paths18406_))))
          (current-module-library-path (append _current18404_ _paths18410_)))))
    (define add-expander-load-path
      (lambda _paths18391_
        (let* ((_current18393_ (gx#current-expander-module-library-path))
               (_paths18395_ (map path-expand _paths18391_))
               (_paths18399_
                (let ((__tmp18441
                       (lambda (_x18397_)
                         (let ((__tmp18442 (member _x18397_ _current18393_)))
                           (declare (not safe))
                           (not __tmp18442)))))
                  (declare (not safe))
                  (filter __tmp18441 _paths18395_))))
          (gx#current-expander-module-library-path
           (append _current18393_ _paths18399_)))))
    (define cons-load-path
      (lambda _paths18389_
        (apply cons-library-load-path _paths18389_)
        (apply cons-expander-load-path _paths18389_)))
    (define cons-library-load-path
      (lambda _paths18384_
        (let ((_current18386_ (current-module-library-path))
              (_paths18387_ (map path-expand _paths18384_)))
          (current-module-library-path (append _paths18387_ _current18386_)))))
    (define cons-expander-load-path
      (lambda _paths18379_
        (let ((_current18381_ (gx#current-expander-module-library-path))
              (_paths18382_ (map path-expand _paths18379_)))
          (gx#current-expander-module-library-path
           (append _paths18382_ _current18381_)))))
    (define with-cons-load-path
      (lambda (_thunk18375_ . _paths18376_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk18375_
                        _paths18376_))
               _paths18376_)))
    (define with-cons-library-load-path
      (lambda (_thunk18368_ . _paths18369_)
        (let ((_current18371_ (current-module-library-path))
              (_paths18372_ (map path-expand _paths18369_)))
          (let ((__tmp18444 (lambda () (_thunk18368_)))
                (__tmp18443 (append _paths18372_ _current18371_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18444
             current-module-library-path
             __tmp18443)))))
    (define with-cons-expander-load-path
      (lambda (_thunk18361_ . _paths18362_)
        (let ((_current18364_ (gx#current-expander-module-library-path))
              (_paths18365_ (map path-expand _paths18362_)))
          (let ((__tmp18446 (lambda () (_thunk18361_)))
                (__tmp18445 (append _paths18365_ _current18364_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18446
             gx#current-expander-module-library-path
             __tmp18445)))))
    (define __expand-source
      (lambda (_src18347_)
        (letrec ((_expand18349_
                  (lambda (_src18359_)
                    (let ((__tmp18447
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src18359_)))))
                      (declare (not safe))
                      (__compile-top __tmp18447))))
                 (_no-expand18350_
                  (lambda (_src18355_)
                    (if (__loading-scheme-source)
                        _src18355_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src18355_))
                            (let ((_code18357_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src18355_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code18357_))
                                  (if (let ((__tmp18448
                                             (let ()
                                               (declare (not safe))
                                               (##car _code18357_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp18448))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code18357_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e18352_
                 (let () (declare (not safe)) (_no-expand18350_ _src18347_))))
            (if _$e18352_
                _$e18352_
                (let () (declare (not safe)) (_expand18349_ _src18347_)))))))
    (define __macro-descr
      (lambda (_src18333_ _def-syntax?18334_)
        (letrec ((_fail!18336_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src18333_))))
                 (_make-descr18337_
                  (lambda (_size18341_)
                    (let ((_expander18344_
                           (let ((__tmp18449
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src18333_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp18449
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander18344_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?18334_
                             _size18341_
                             _expander18344_
                             _src18333_))
                          (let () (declare (not safe)) (_fail!18336_)))))))
          (if _def-syntax?18334_
              (let () (declare (not safe)) (_make-descr18337_ '-1))
              (let ((_code18339_
                     (let () (declare (not safe)) (##source-code _src18333_))))
                (if (and (let () (declare (not safe)) (##pair? _code18339_))
                         (let ((__tmp18453
                                (let ((__tmp18454
                                       (let ((__tmp18455
                                              (let ()
                                                (declare (not safe))
                                                (##car _code18339_))))
                                         (declare (not safe))
                                         (##sourcify __tmp18455 _src18333_))))
                                  (declare (not safe))
                                  (##source-code __tmp18454))))
                           (declare (not safe))
                           (##memq __tmp18453 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src18333_ _src18333_ '-3))
                      (let ((__tmp18450
                             (let ((__tmp18451
                                    (let ((__tmp18452
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code18339_))))
                                      (declare (not safe))
                                      (##sourcify __tmp18452 _src18333_))))
                               (declare (not safe))
                               (##form-size __tmp18451))))
                        (declare (not safe))
                        (_make-descr18337_ __tmp18450)))
                    (let () (declare (not safe)) (_fail!18336_))))))))
    (define __source->syntax
      (lambda (_src18327_)
        (let _recur18329_ ((_e18331_ _src18327_))
          (if (let () (declare (not safe)) (##source? _e18331_))
              (let ((__tmp18463
                     (let ((__tmp18464
                            (let ()
                              (declare (not safe))
                              (##source-code _e18331_))))
                       (declare (not safe))
                       (_recur18329_ __tmp18464)))
                    (__tmp18462
                     (let () (declare (not safe)) (##source-locat _e18331_))))
                (declare (not safe))
                (##structure AST::t __tmp18463 __tmp18462))
              (if (let () (declare (not safe)) (pair? _e18331_))
                  (let ((__tmp18460
                         (let ((__tmp18461
                                (let ()
                                  (declare (not safe))
                                  (##car _e18331_))))
                           (declare (not safe))
                           (_recur18329_ __tmp18461)))
                        (__tmp18458
                         (let ((__tmp18459
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e18331_))))
                           (declare (not safe))
                           (_recur18329_ __tmp18459))))
                    (declare (not safe))
                    (cons __tmp18460 __tmp18458))
                  (if (let () (declare (not safe)) (vector? _e18331_))
                      (vector-map _recur18329_ _e18331_)
                      (if (let () (declare (not safe)) (box? _e18331_))
                          (let ((__tmp18456
                                 (let ((__tmp18457 (unbox _e18331_)))
                                   (declare (not safe))
                                   (_recur18329_ __tmp18457))))
                            (declare (not safe))
                            (box __tmp18456))
                          _e18331_)))))))
    (define __compile-top-source
      (lambda (_stx18325_)
        (let ((__tmp18465
               (let () (declare (not safe)) (__compile-top _stx18325_))))
          (declare (not safe))
          (cons '__noexpand: __tmp18465))))
    (define __compile-top
      (lambda (_stx18323_)
        (let ((__tmp18466 (gx#core-compile-top-syntax _stx18323_)))
          (declare (not safe))
          (__compile __tmp18466))))
    (define __eval-import
      (lambda (_in18304_)
        (letrec* ((_mods18306_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import118307_
                   (lambda (_in18314_ _phi18315_)
                     (if (gx#module-import? _in18314_)
                         (let ((_iphi18317_
                                (fx+ _phi18315_
                                     (gx#module-import-phi _in18314_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi18317_))
                               (let ((__tmp18468
                                      (gx#module-export-context
                                       (gx#module-import-source _in18314_))))
                                 (declare (not safe))
                                 (_eval118308_ __tmp18468))
                               '#!void))
                         (if (gx#module-context? _in18314_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi18315_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval118308_ _in18314_))
                                 '#!void)
                             (if (gx#import-set? _in18314_)
                                 (let ((_iphi18319_
                                        (fx+ _phi18315_
                                             (gx#import-set-phi _in18314_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi18319_))
                                       (let ((__tmp18467
                                              (gx#import-set-source
                                               _in18314_)))
                                         (declare (not safe))
                                         (_eval118308_ __tmp18467))
                                       (if (fxpositive? _iphi18319_)
                                           (for-each
                                            (lambda (_in18321_)
                                              (let ()
                                                (declare (not safe))
                                                (_import118307_
                                                 _in18321_
                                                 _iphi18319_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in18314_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in18314_))))))
                  (_eval118308_
                   (lambda (_ctx18312_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods18306_ _ctx18312_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods18306_ _ctx18312_ '#t))
                           (__eval-module _ctx18312_))))))
          (if (let () (declare (not safe)) (pair? _in18304_))
              (for-each
               (lambda (_in18310_)
                 (let () (declare (not safe)) (_import118307_ _in18310_ '0)))
               _in18304_)
              (let () (declare (not safe)) (_import118307_ _in18304_ '0))))))
    (define __eval-module
      (lambda (_obj18297_)
        (let* ((_key18299_
                (if (gx#module-context? _obj18297_)
                    (gx#module-context-path _obj18297_)
                    _obj18297_))
               (_$e18301_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key18299_ '#f))))
          (if _$e18301_ (values _$e18301_) (gx#core-eval-module _obj18297_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules18232_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home18234_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir18236_ (path-expand '"lib" _home18234_))
                     (_loadpath18245_
                      (let ((_$e18238_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e18238_
                            ((lambda (_envvar18241_)
                               (let ((__tmp18470
                                      (lambda (_x18243_)
                                        (let ((__tmp18471
                                               (let ()
                                                 (declare (not safe))
                                                 (string-empty? _x18243_))))
                                          (declare (not safe))
                                          (not __tmp18471))))
                                     (__tmp18469
                                      (let ()
                                        (declare (not safe))
                                        (string-split _envvar18241_ '#\:))))
                                 (declare (not safe))
                                 (filter __tmp18470 __tmp18469)))
                             _$e18238_)
                            '())))
                     (_userpath18247_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath18249_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          _loadpath18245_
                          (let ()
                            (declare (not safe))
                            (cons _userpath18247_ _loadpath18245_)))))
                (current-module-library-path
                 (let ()
                   (declare (not safe))
                   (cons _libdir18236_ _loadpath18249_))))
              (let* ((_registry-entry18254_
                      (lambda (_m18252_)
                        (let ()
                          (declare (not safe))
                          (cons _m18252_ 'builtin))))
                     (_module-registry18294_
                      (let _lp18256_ ((_rest18258_ _builtin-modules18232_)
                                      (_registry18259_ '()))
                        (let* ((_rest1826018268_ _rest18258_)
                               (_else1826218276_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry18259_))))
                               (_K1826418282_
                                (lambda (_rest18279_ _mod18280_)
                                  (let ((__tmp18472
                                         (let ((__tmp18476
                                                (let ((__tmp18477
                                                       (string-append
                                                        _mod18280_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry18254_
                                                   __tmp18477)))
                                               (__tmp18473
                                                (let ((__tmp18474
                                                       (let ((__tmp18475
                                                              (string-append
                                                               _mod18280_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry18254_
                                                          __tmp18475))))
                                                  (declare (not safe))
                                                  (cons __tmp18474
                                                        _registry18259_))))
                                           (declare (not safe))
                                           (cons __tmp18476 __tmp18473))))
                                    (declare (not safe))
                                    (_lp18256_ _rest18279_ __tmp18472)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1826018268_))
                              (let ((_hd1826518285_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1826018268_)))
                                    (_tl1826618287_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1826018268_))))
                                (let* ((_mod18290_ _hd1826518285_)
                                       (_rest18292_ _tl1826618287_))
                                  (declare (not safe))
                                  (_K1826418282_ _rest18292_ _mod18290_)))
                              (let ()
                                (declare (not safe))
                                (_else1826218276_)))))))
                (current-module-registry _module-registry18294_))
              (current-readtable __*readtable*)
              (random-source-randomize! default-random-source)
              (set! __runtime-initialized '#t)))))
    (define __expander-loaded '#f)
    (define __runtime-initialized '#f)
    (define gerbil-load-expander!
      (lambda ()
        (if __runtime-initialized
            '#!void
            (error '"runtime has not been initialized"))
        (if __expander-loaded
            '#!void
            (begin
              (let () (declare (not safe)) (__load-gxi))
              (set! __expander-loaded '#t)))))))
