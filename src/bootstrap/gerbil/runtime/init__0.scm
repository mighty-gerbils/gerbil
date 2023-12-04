(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1701718632)
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
        (letrec* ((_+readtable+16347_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core16349_ (gx#import-module ':gerbil/core))
                 (_pre16351_ (gx#make-prelude-context _core16349_)))
            (gx#current-expander-module-prelude _pre16351_)
            (gx#core-bind-root-syntax! ':<core> _pre16351_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port16354_)
             (input-port-readtable-set! _port16354_ _+readtable+16347_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port16356_)
             (output-port-readtable-set!
              _port16356_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port16356_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline16344_) '#!void))
    (define load-scheme
      (lambda (_path16339_)
        (let ((__tmp16358
               (lambda ()
                 (let ((__tmp16359 (lambda _args16342_ '#f)))
                   (declare (not safe))
                   (##load _path16339_ __tmp16359 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp16358
           __loading-scheme-source
           _path16339_))))
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
      (lambda _paths16334_
        (apply add-library-load-path _paths16334_)
        (apply add-expander-load-path _paths16334_)))
    (define add-library-load-path
      (lambda _paths16323_
        (let* ((_current16325_ (current-module-library-path))
               (_paths16327_ (map path-expand _paths16323_))
               (_paths16331_
                (let ((__tmp16360
                       (lambda (_x16329_)
                         (let ((__tmp16361 (member _x16329_ _current16325_)))
                           (declare (not safe))
                           (not __tmp16361)))))
                  (declare (not safe))
                  (filter __tmp16360 _paths16327_))))
          (current-module-library-path (append _current16325_ _paths16331_)))))
    (define add-expander-load-path
      (lambda _paths16312_
        (let* ((_current16314_ (gx#current-expander-module-library-path))
               (_paths16316_ (map path-expand _paths16312_))
               (_paths16320_
                (let ((__tmp16362
                       (lambda (_x16318_)
                         (let ((__tmp16363 (member _x16318_ _current16314_)))
                           (declare (not safe))
                           (not __tmp16363)))))
                  (declare (not safe))
                  (filter __tmp16362 _paths16316_))))
          (gx#current-expander-module-library-path
           (append _current16314_ _paths16320_)))))
    (define cons-load-path
      (lambda _paths16310_
        (apply cons-library-load-path _paths16310_)
        (apply cons-expander-load-path _paths16310_)))
    (define cons-library-load-path
      (lambda _paths16305_
        (let ((_current16307_ (current-module-library-path))
              (_paths16308_ (map path-expand _paths16305_)))
          (current-module-library-path (append _paths16308_ _current16307_)))))
    (define cons-expander-load-path
      (lambda _paths16300_
        (let ((_current16302_ (gx#current-expander-module-library-path))
              (_paths16303_ (map path-expand _paths16300_)))
          (gx#current-expander-module-library-path
           (append _paths16303_ _current16302_)))))
    (define with-cons-load-path
      (lambda (_thunk16296_ . _paths16297_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk16296_
                        _paths16297_))
               _paths16297_)))
    (define with-cons-library-load-path
      (lambda (_thunk16289_ . _paths16290_)
        (let ((_current16292_ (current-module-library-path))
              (_paths16293_ (map path-expand _paths16290_)))
          (let ((__tmp16365 (lambda () (_thunk16289_)))
                (__tmp16364 (append _paths16293_ _current16292_)))
            (declare (not safe))
            (call-with-parameters
             __tmp16365
             current-module-library-path
             __tmp16364)))))
    (define with-cons-expander-load-path
      (lambda (_thunk16282_ . _paths16283_)
        (let ((_current16285_ (gx#current-expander-module-library-path))
              (_paths16286_ (map path-expand _paths16283_)))
          (let ((__tmp16367 (lambda () (_thunk16282_)))
                (__tmp16366 (append _paths16286_ _current16285_)))
            (declare (not safe))
            (call-with-parameters
             __tmp16367
             gx#current-expander-module-library-path
             __tmp16366)))))
    (define __expand-source
      (lambda (_src16268_)
        (letrec ((_expand16270_
                  (lambda (_src16280_)
                    (let ((__tmp16368
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src16280_)))))
                      (declare (not safe))
                      (__compile-top __tmp16368))))
                 (_no-expand16271_
                  (lambda (_src16276_)
                    (if (__loading-scheme-source)
                        _src16276_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src16276_))
                            (let ((_code16278_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src16276_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code16278_))
                                  (if (let ((__tmp16369
                                             (let ()
                                               (declare (not safe))
                                               (##car _code16278_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp16369))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code16278_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e16273_
                 (let () (declare (not safe)) (_no-expand16271_ _src16268_))))
            (if _$e16273_
                _$e16273_
                (let () (declare (not safe)) (_expand16270_ _src16268_)))))))
    (define __macro-descr
      (lambda (_src16254_ _def-syntax?16255_)
        (letrec ((_fail!16257_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src16254_))))
                 (_make-descr16258_
                  (lambda (_size16262_)
                    (let ((_expander16265_
                           (let ((__tmp16370
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src16254_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp16370
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander16265_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?16255_
                             _size16262_
                             _expander16265_
                             _src16254_))
                          (let () (declare (not safe)) (_fail!16257_)))))))
          (if _def-syntax?16255_
              (let () (declare (not safe)) (_make-descr16258_ '-1))
              (let ((_code16260_
                     (let () (declare (not safe)) (##source-code _src16254_))))
                (if (and (let () (declare (not safe)) (##pair? _code16260_))
                         (let ((__tmp16374
                                (let ((__tmp16375
                                       (let ((__tmp16376
                                              (let ()
                                                (declare (not safe))
                                                (##car _code16260_))))
                                         (declare (not safe))
                                         (##sourcify __tmp16376 _src16254_))))
                                  (declare (not safe))
                                  (##source-code __tmp16375))))
                           (declare (not safe))
                           (##memq __tmp16374 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src16254_ _src16254_ '-3))
                      (let ((__tmp16371
                             (let ((__tmp16372
                                    (let ((__tmp16373
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code16260_))))
                                      (declare (not safe))
                                      (##sourcify __tmp16373 _src16254_))))
                               (declare (not safe))
                               (##form-size __tmp16372))))
                        (declare (not safe))
                        (_make-descr16258_ __tmp16371)))
                    (let () (declare (not safe)) (_fail!16257_))))))))
    (define __source->syntax
      (lambda (_src16248_)
        (let _recur16250_ ((_e16252_ _src16248_))
          (if (let () (declare (not safe)) (##source? _e16252_))
              (let ((__tmp16384
                     (let ((__tmp16385
                            (let ()
                              (declare (not safe))
                              (##source-code _e16252_))))
                       (declare (not safe))
                       (_recur16250_ __tmp16385)))
                    (__tmp16383
                     (let () (declare (not safe)) (##source-locat _e16252_))))
                (declare (not safe))
                (##structure AST::t __tmp16384 __tmp16383))
              (if (let () (declare (not safe)) (pair? _e16252_))
                  (let ((__tmp16381
                         (let ((__tmp16382
                                (let ()
                                  (declare (not safe))
                                  (##car _e16252_))))
                           (declare (not safe))
                           (_recur16250_ __tmp16382)))
                        (__tmp16379
                         (let ((__tmp16380
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e16252_))))
                           (declare (not safe))
                           (_recur16250_ __tmp16380))))
                    (declare (not safe))
                    (cons __tmp16381 __tmp16379))
                  (if (let () (declare (not safe)) (vector? _e16252_))
                      (vector-map _recur16250_ _e16252_)
                      (if (let () (declare (not safe)) (box? _e16252_))
                          (let ((__tmp16377
                                 (let ((__tmp16378 (unbox _e16252_)))
                                   (declare (not safe))
                                   (_recur16250_ __tmp16378))))
                            (declare (not safe))
                            (box __tmp16377))
                          _e16252_)))))))
    (define __compile-top-source
      (lambda (_stx16246_)
        (let ((__tmp16386
               (let () (declare (not safe)) (__compile-top _stx16246_))))
          (declare (not safe))
          (cons '__noexpand: __tmp16386))))
    (define __compile-top
      (lambda (_stx16244_)
        (let ((__tmp16387 (gx#core-compile-top-syntax _stx16244_)))
          (declare (not safe))
          (__compile __tmp16387))))
    (define __eval-import
      (lambda (_in16225_)
        (letrec* ((_mods16227_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import116228_
                   (lambda (_in16235_ _phi16236_)
                     (if (gx#module-import? _in16235_)
                         (let ((_iphi16238_
                                (fx+ _phi16236_
                                     (gx#module-import-phi _in16235_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi16238_))
                               (let ((__tmp16389
                                      (gx#module-export-context
                                       (gx#module-import-source _in16235_))))
                                 (declare (not safe))
                                 (_eval116229_ __tmp16389))
                               '#!void))
                         (if (gx#module-context? _in16235_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi16236_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval116229_ _in16235_))
                                 '#!void)
                             (if (gx#import-set? _in16235_)
                                 (let ((_iphi16240_
                                        (fx+ _phi16236_
                                             (gx#import-set-phi _in16235_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi16240_))
                                       (let ((__tmp16388
                                              (gx#import-set-source
                                               _in16235_)))
                                         (declare (not safe))
                                         (_eval116229_ __tmp16388))
                                       (if (fxpositive? _iphi16240_)
                                           (for-each
                                            (lambda (_in16242_)
                                              (let ()
                                                (declare (not safe))
                                                (_import116228_
                                                 _in16242_
                                                 _iphi16240_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in16235_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in16235_))))))
                  (_eval116229_
                   (lambda (_ctx16233_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods16227_ _ctx16233_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods16227_ _ctx16233_ '#t))
                           (__eval-module _ctx16233_))))))
          (if (let () (declare (not safe)) (pair? _in16225_))
              (for-each
               (lambda (_in16231_)
                 (let () (declare (not safe)) (_import116228_ _in16231_ '0)))
               _in16225_)
              (let () (declare (not safe)) (_import116228_ _in16225_ '0))))))
    (define __eval-module
      (lambda (_obj16218_)
        (let* ((_key16220_
                (if (gx#module-context? _obj16218_)
                    (gx#module-context-path _obj16218_)
                    _obj16218_))
               (_$e16222_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key16220_ '#f))))
          (if _$e16222_ (values _$e16222_) (gx#core-eval-module _obj16218_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules16153_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home16155_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir16157_ (path-expand '"lib" _home16155_))
                     (_userpath16159_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath16161_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir16157_ '()))
                          (let ((__tmp16390
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir16157_ '()))))
                            (declare (not safe))
                            (cons _userpath16159_ __tmp16390))))
                     (_loadpath16170_
                      (let ((_$e16163_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e16163_
                            ((lambda (_envvar16166_)
                               (append (let ((__tmp16392
                                              (lambda (_x16168_)
                                                (let ((__tmp16393
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x16168_))))
                                                  (declare (not safe))
                                                  (not __tmp16393))))
                                             (__tmp16391
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar16166_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp16392 __tmp16391))
                                       _loadpath16161_))
                             _$e16163_)
                            _loadpath16161_))))
                (current-module-library-path _loadpath16170_))
              (let* ((_registry-entry16175_
                      (lambda (_m16173_)
                        (let ()
                          (declare (not safe))
                          (cons _m16173_ 'builtin))))
                     (_module-registry16215_
                      (let _lp16177_ ((_rest16179_ _builtin-modules16153_)
                                      (_registry16180_ '()))
                        (let* ((_rest1618116189_ _rest16179_)
                               (_else1618316197_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry16180_))))
                               (_K1618516203_
                                (lambda (_rest16200_ _mod16201_)
                                  (let ((__tmp16394
                                         (let ((__tmp16398
                                                (let ((__tmp16399
                                                       (string-append
                                                        _mod16201_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry16175_
                                                   __tmp16399)))
                                               (__tmp16395
                                                (let ((__tmp16396
                                                       (let ((__tmp16397
                                                              (string-append
                                                               _mod16201_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry16175_
                                                          __tmp16397))))
                                                  (declare (not safe))
                                                  (cons __tmp16396
                                                        _registry16180_))))
                                           (declare (not safe))
                                           (cons __tmp16398 __tmp16395))))
                                    (declare (not safe))
                                    (_lp16177_ _rest16200_ __tmp16394)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1618116189_))
                              (let ((_hd1618616206_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1618116189_)))
                                    (_tl1618716208_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1618116189_))))
                                (let* ((_mod16211_ _hd1618616206_)
                                       (_rest16213_ _tl1618716208_))
                                  (declare (not safe))
                                  (_K1618516203_ _rest16213_ _mod16211_)))
                              (let ()
                                (declare (not safe))
                                (_else1618316197_)))))))
                (current-module-registry _module-registry16215_))
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
