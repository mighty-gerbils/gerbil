(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1695377590)
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
        (letrec* ((_+readtable+18301_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core18303_ (gx#import-module ':gerbil/core))
                 (_pre18305_ (gx#make-prelude-context _core18303_)))
            (gx#current-expander-module-prelude _pre18305_)
            (gx#core-bind-root-syntax! ':<core> _pre18305_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port18308_)
             (input-port-readtable-set! _port18308_ _+readtable+18301_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port18310_)
             (output-port-readtable-set!
              _port18310_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port18310_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline18298_) '#!void))
    (define load-scheme
      (lambda (_path18293_)
        (let ((__tmp18312
               (lambda ()
                 (let ((__tmp18313 (lambda _args18296_ '#f)))
                   (declare (not safe))
                   (##load _path18293_ __tmp18313 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp18312
           __loading-scheme-source
           _path18293_))))
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
      (lambda _paths18288_
        (apply add-library-load-path _paths18288_)
        (apply add-expander-load-path _paths18288_)))
    (define add-library-load-path
      (lambda _paths18277_
        (let* ((_current18279_ (current-module-library-path))
               (_paths18281_ (map path-expand _paths18277_))
               (_paths18285_
                (let ((__tmp18314
                       (lambda (_x18283_)
                         (let ((__tmp18315 (member _x18283_ _current18279_)))
                           (declare (not safe))
                           (not __tmp18315)))))
                  (declare (not safe))
                  (filter __tmp18314 _paths18281_))))
          (current-module-library-path (append _current18279_ _paths18285_)))))
    (define add-expander-load-path
      (lambda _paths18266_
        (let* ((_current18268_ (gx#current-expander-module-library-path))
               (_paths18270_ (map path-expand _paths18266_))
               (_paths18274_
                (let ((__tmp18316
                       (lambda (_x18272_)
                         (let ((__tmp18317 (member _x18272_ _current18268_)))
                           (declare (not safe))
                           (not __tmp18317)))))
                  (declare (not safe))
                  (filter __tmp18316 _paths18270_))))
          (gx#current-expander-module-library-path
           (append _current18268_ _paths18274_)))))
    (define cons-load-path
      (lambda _paths18264_
        (apply cons-library-load-path _paths18264_)
        (apply cons-expander-load-path _paths18264_)))
    (define cons-library-load-path
      (lambda _paths18259_
        (let ((_current18261_ (current-module-library-path))
              (_paths18262_ (map path-expand _paths18259_)))
          (current-module-library-path (append _paths18262_ _current18261_)))))
    (define cons-expander-load-path
      (lambda _paths18254_
        (let ((_current18256_ (gx#current-expander-module-library-path))
              (_paths18257_ (map path-expand _paths18254_)))
          (gx#current-expander-module-library-path
           (append _paths18257_ _current18256_)))))
    (define with-cons-load-path
      (lambda (_thunk18250_ . _paths18251_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk18250_
                        _paths18251_))
               _paths18251_)))
    (define with-cons-library-load-path
      (lambda (_thunk18243_ . _paths18244_)
        (let ((_current18246_ (current-module-library-path))
              (_paths18247_ (map path-expand _paths18244_)))
          (let ((__tmp18319 (lambda () (_thunk18243_)))
                (__tmp18318 (append _paths18247_ _current18246_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18319
             current-module-library-path
             __tmp18318)))))
    (define with-cons-expander-load-path
      (lambda (_thunk18236_ . _paths18237_)
        (let ((_current18239_ (gx#current-expander-module-library-path))
              (_paths18240_ (map path-expand _paths18237_)))
          (let ((__tmp18321 (lambda () (_thunk18236_)))
                (__tmp18320 (append _paths18240_ _current18239_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18321
             gx#current-expander-module-library-path
             __tmp18320)))))
    (define __expand-source
      (lambda (_src18222_)
        (letrec ((_expand18224_
                  (lambda (_src18234_)
                    (let ((__tmp18322
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src18234_)))))
                      (declare (not safe))
                      (__compile-top __tmp18322))))
                 (_no-expand18225_
                  (lambda (_src18230_)
                    (if (__loading-scheme-source)
                        _src18230_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src18230_))
                            (let ((_code18232_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src18230_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code18232_))
                                  (if (let ((__tmp18323
                                             (let ()
                                               (declare (not safe))
                                               (##car _code18232_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp18323))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code18232_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e18227_
                 (let () (declare (not safe)) (_no-expand18225_ _src18222_))))
            (if _$e18227_
                _$e18227_
                (let () (declare (not safe)) (_expand18224_ _src18222_)))))))
    (define __macro-descr
      (lambda (_src18208_ _def-syntax?18209_)
        (letrec ((_fail!18211_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src18208_))))
                 (_make-descr18212_
                  (lambda (_size18216_)
                    (let ((_expander18219_
                           (let ((__tmp18324
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src18208_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp18324
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander18219_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?18209_
                             _size18216_
                             _expander18219_
                             _src18208_))
                          (let () (declare (not safe)) (_fail!18211_)))))))
          (if _def-syntax?18209_
              (let () (declare (not safe)) (_make-descr18212_ '-1))
              (let ((_code18214_
                     (let () (declare (not safe)) (##source-code _src18208_))))
                (if (and (let () (declare (not safe)) (##pair? _code18214_))
                         (let ((__tmp18328
                                (let ((__tmp18329
                                       (let ((__tmp18330
                                              (let ()
                                                (declare (not safe))
                                                (##car _code18214_))))
                                         (declare (not safe))
                                         (##sourcify __tmp18330 _src18208_))))
                                  (declare (not safe))
                                  (##source-code __tmp18329))))
                           (declare (not safe))
                           (##memq __tmp18328 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src18208_ _src18208_ '-3))
                      (let ((__tmp18325
                             (let ((__tmp18326
                                    (let ((__tmp18327
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code18214_))))
                                      (declare (not safe))
                                      (##sourcify __tmp18327 _src18208_))))
                               (declare (not safe))
                               (##form-size __tmp18326))))
                        (declare (not safe))
                        (_make-descr18212_ __tmp18325)))
                    (let () (declare (not safe)) (_fail!18211_))))))))
    (define __source->syntax
      (lambda (_src18202_)
        (let _recur18204_ ((_e18206_ _src18202_))
          (if (let () (declare (not safe)) (##source? _e18206_))
              (let ((__tmp18338
                     (let ((__tmp18339
                            (let ()
                              (declare (not safe))
                              (##source-code _e18206_))))
                       (declare (not safe))
                       (_recur18204_ __tmp18339)))
                    (__tmp18337
                     (let () (declare (not safe)) (##source-locat _e18206_))))
                (declare (not safe))
                (##structure AST::t __tmp18338 __tmp18337))
              (if (let () (declare (not safe)) (pair? _e18206_))
                  (let ((__tmp18335
                         (let ((__tmp18336
                                (let ()
                                  (declare (not safe))
                                  (##car _e18206_))))
                           (declare (not safe))
                           (_recur18204_ __tmp18336)))
                        (__tmp18333
                         (let ((__tmp18334
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e18206_))))
                           (declare (not safe))
                           (_recur18204_ __tmp18334))))
                    (declare (not safe))
                    (cons __tmp18335 __tmp18333))
                  (if (let () (declare (not safe)) (vector? _e18206_))
                      (vector-map _recur18204_ _e18206_)
                      (if (let () (declare (not safe)) (box? _e18206_))
                          (let ((__tmp18331
                                 (let ((__tmp18332 (unbox _e18206_)))
                                   (declare (not safe))
                                   (_recur18204_ __tmp18332))))
                            (declare (not safe))
                            (box __tmp18331))
                          _e18206_)))))))
    (define __compile-top-source
      (lambda (_stx18200_)
        (let ((__tmp18340
               (let () (declare (not safe)) (__compile-top _stx18200_))))
          (declare (not safe))
          (cons '__noexpand: __tmp18340))))
    (define __compile-top
      (lambda (_stx18198_)
        (let ((__tmp18341 (gx#core-compile-top-syntax _stx18198_)))
          (declare (not safe))
          (__compile __tmp18341))))
    (define __eval-import
      (lambda (_in18179_)
        (letrec* ((_mods18181_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import118182_
                   (lambda (_in18189_ _phi18190_)
                     (if (gx#module-import? _in18189_)
                         (let ((_iphi18192_
                                (fx+ _phi18190_
                                     (gx#module-import-phi _in18189_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi18192_))
                               (let ((__tmp18343
                                      (gx#module-export-context
                                       (gx#module-import-source _in18189_))))
                                 (declare (not safe))
                                 (_eval118183_ __tmp18343))
                               '#!void))
                         (if (gx#module-context? _in18189_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi18190_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval118183_ _in18189_))
                                 '#!void)
                             (if (gx#import-set? _in18189_)
                                 (let ((_iphi18194_
                                        (fx+ _phi18190_
                                             (gx#import-set-phi _in18189_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi18194_))
                                       (let ((__tmp18342
                                              (gx#import-set-source
                                               _in18189_)))
                                         (declare (not safe))
                                         (_eval118183_ __tmp18342))
                                       (if (fxpositive? _iphi18194_)
                                           (for-each
                                            (lambda (_in18196_)
                                              (let ()
                                                (declare (not safe))
                                                (_import118182_
                                                 _in18196_
                                                 _iphi18194_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in18189_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in18189_))))))
                  (_eval118183_
                   (lambda (_ctx18187_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods18181_ _ctx18187_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods18181_ _ctx18187_ '#t))
                           (__eval-module _ctx18187_))))))
          (if (let () (declare (not safe)) (pair? _in18179_))
              (for-each
               (lambda (_in18185_)
                 (let () (declare (not safe)) (_import118182_ _in18185_ '0)))
               _in18179_)
              (let () (declare (not safe)) (_import118182_ _in18179_ '0))))))
    (define __eval-module
      (lambda (_obj18172_)
        (let* ((_key18174_
                (if (gx#module-context? _obj18172_)
                    (gx#module-context-path _obj18172_)
                    _obj18172_))
               (_$e18176_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key18174_ '#f))))
          (if _$e18176_ (values _$e18176_) (gx#core-eval-module _obj18172_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules18107_)
        (let* ((_home18109_ (let () (declare (not safe)) (gerbil-home)))
               (_libdir18111_ (path-expand '"lib" _home18109_))
               (_loadpath18120_
                (let ((_$e18113_ (getenv '"GERBIL_LOADPATH" '#f)))
                  (if _$e18113_
                      ((lambda (_envvar18116_)
                         (let ((__tmp18345
                                (lambda (_x18118_)
                                  (let ((__tmp18346
                                         (let ()
                                           (declare (not safe))
                                           (string-empty? _x18118_))))
                                    (declare (not safe))
                                    (not __tmp18346))))
                               (__tmp18344
                                (let ()
                                  (declare (not safe))
                                  (string-split _envvar18116_ '#\:))))
                           (declare (not safe))
                           (filter __tmp18345 __tmp18344)))
                       _$e18113_)
                      '())))
               (_userpath18122_
                (path-expand '"lib" (getenv '"GERBIL_PATH" '"~/.gerbil")))
               (_loadpath18124_
                (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                    _loadpath18120_
                    (let ()
                      (declare (not safe))
                      (cons _userpath18122_ _loadpath18120_)))))
          (current-module-library-path
           (let () (declare (not safe)) (cons _libdir18111_ _loadpath18124_))))
        (let* ((_registry-entry18129_
                (lambda (_m18127_)
                  (let () (declare (not safe)) (cons _m18127_ 'builtin))))
               (_module-registry18169_
                (let _lp18131_ ((_rest18133_ _builtin-modules18107_)
                                (_registry18134_ '()))
                  (let* ((_rest1813518143_ _rest18133_)
                         (_else1813718151_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (list->table _registry18134_))))
                         (_K1813918157_
                          (lambda (_rest18154_ _mod18155_)
                            (let ((__tmp18347
                                   (let ((__tmp18351
                                          (let ((__tmp18352
                                                 (string-append
                                                  _mod18155_
                                                  '"__0")))
                                            (declare (not safe))
                                            (_registry-entry18129_
                                             __tmp18352)))
                                         (__tmp18348
                                          (let ((__tmp18349
                                                 (let ((__tmp18350
                                                        (string-append
                                                         _mod18155_
                                                         '"__rt")))
                                                   (declare (not safe))
                                                   (_registry-entry18129_
                                                    __tmp18350))))
                                            (declare (not safe))
                                            (cons __tmp18349
                                                  _registry18134_))))
                                     (declare (not safe))
                                     (cons __tmp18351 __tmp18348))))
                              (declare (not safe))
                              (_lp18131_ _rest18154_ __tmp18347)))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest1813518143_))
                        (let ((_hd1814018160_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest1813518143_)))
                              (_tl1814118162_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest1813518143_))))
                          (let* ((_mod18165_ _hd1814018160_)
                                 (_rest18167_ _tl1814118162_))
                            (declare (not safe))
                            (_K1813918157_ _rest18167_ _mod18165_)))
                        (let () (declare (not safe)) (_else1813718151_)))))))
          (current-module-registry _module-registry18169_))
        (current-readtable __*readtable*)
        (random-source-randomize! default-random-source)))
    (define __expander-loaded '#f)
    (define gerbil-load-expander!
      (lambda ()
        (if __expander-loaded
            '#!void
            (begin
              (let () (declare (not safe)) (__load-gxi))
              (set! __expander-loaded '#t)))))))
