(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1695392653)
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
        (letrec* ((_+readtable+18313_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core18315_ (gx#import-module ':gerbil/core))
                 (_pre18317_ (gx#make-prelude-context _core18315_)))
            (gx#current-expander-module-prelude _pre18317_)
            (gx#core-bind-root-syntax! ':<core> _pre18317_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port18320_)
             (input-port-readtable-set! _port18320_ _+readtable+18313_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port18322_)
             (output-port-readtable-set!
              _port18322_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port18322_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline18310_) '#!void))
    (define load-scheme
      (lambda (_path18305_)
        (let ((__tmp18324
               (lambda ()
                 (let ((__tmp18325 (lambda _args18308_ '#f)))
                   (declare (not safe))
                   (##load _path18305_ __tmp18325 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp18324
           __loading-scheme-source
           _path18305_))))
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
      (lambda _paths18300_
        (apply add-library-load-path _paths18300_)
        (apply add-expander-load-path _paths18300_)))
    (define add-library-load-path
      (lambda _paths18289_
        (let* ((_current18291_ (current-module-library-path))
               (_paths18293_ (map path-expand _paths18289_))
               (_paths18297_
                (let ((__tmp18326
                       (lambda (_x18295_)
                         (let ((__tmp18327 (member _x18295_ _current18291_)))
                           (declare (not safe))
                           (not __tmp18327)))))
                  (declare (not safe))
                  (filter __tmp18326 _paths18293_))))
          (current-module-library-path (append _current18291_ _paths18297_)))))
    (define add-expander-load-path
      (lambda _paths18278_
        (let* ((_current18280_ (gx#current-expander-module-library-path))
               (_paths18282_ (map path-expand _paths18278_))
               (_paths18286_
                (let ((__tmp18328
                       (lambda (_x18284_)
                         (let ((__tmp18329 (member _x18284_ _current18280_)))
                           (declare (not safe))
                           (not __tmp18329)))))
                  (declare (not safe))
                  (filter __tmp18328 _paths18282_))))
          (gx#current-expander-module-library-path
           (append _current18280_ _paths18286_)))))
    (define cons-load-path
      (lambda _paths18276_
        (apply cons-library-load-path _paths18276_)
        (apply cons-expander-load-path _paths18276_)))
    (define cons-library-load-path
      (lambda _paths18271_
        (let ((_current18273_ (current-module-library-path))
              (_paths18274_ (map path-expand _paths18271_)))
          (current-module-library-path (append _paths18274_ _current18273_)))))
    (define cons-expander-load-path
      (lambda _paths18266_
        (let ((_current18268_ (gx#current-expander-module-library-path))
              (_paths18269_ (map path-expand _paths18266_)))
          (gx#current-expander-module-library-path
           (append _paths18269_ _current18268_)))))
    (define with-cons-load-path
      (lambda (_thunk18262_ . _paths18263_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk18262_
                        _paths18263_))
               _paths18263_)))
    (define with-cons-library-load-path
      (lambda (_thunk18255_ . _paths18256_)
        (let ((_current18258_ (current-module-library-path))
              (_paths18259_ (map path-expand _paths18256_)))
          (let ((__tmp18331 (lambda () (_thunk18255_)))
                (__tmp18330 (append _paths18259_ _current18258_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18331
             current-module-library-path
             __tmp18330)))))
    (define with-cons-expander-load-path
      (lambda (_thunk18248_ . _paths18249_)
        (let ((_current18251_ (gx#current-expander-module-library-path))
              (_paths18252_ (map path-expand _paths18249_)))
          (let ((__tmp18333 (lambda () (_thunk18248_)))
                (__tmp18332 (append _paths18252_ _current18251_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18333
             gx#current-expander-module-library-path
             __tmp18332)))))
    (define __expand-source
      (lambda (_src18234_)
        (letrec ((_expand18236_
                  (lambda (_src18246_)
                    (let ((__tmp18334
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src18246_)))))
                      (declare (not safe))
                      (__compile-top __tmp18334))))
                 (_no-expand18237_
                  (lambda (_src18242_)
                    (if (__loading-scheme-source)
                        _src18242_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src18242_))
                            (let ((_code18244_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src18242_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code18244_))
                                  (if (let ((__tmp18335
                                             (let ()
                                               (declare (not safe))
                                               (##car _code18244_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp18335))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code18244_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e18239_
                 (let () (declare (not safe)) (_no-expand18237_ _src18234_))))
            (if _$e18239_
                _$e18239_
                (let () (declare (not safe)) (_expand18236_ _src18234_)))))))
    (define __macro-descr
      (lambda (_src18220_ _def-syntax?18221_)
        (letrec ((_fail!18223_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src18220_))))
                 (_make-descr18224_
                  (lambda (_size18228_)
                    (let ((_expander18231_
                           (let ((__tmp18336
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src18220_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp18336
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander18231_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?18221_
                             _size18228_
                             _expander18231_
                             _src18220_))
                          (let () (declare (not safe)) (_fail!18223_)))))))
          (if _def-syntax?18221_
              (let () (declare (not safe)) (_make-descr18224_ '-1))
              (let ((_code18226_
                     (let () (declare (not safe)) (##source-code _src18220_))))
                (if (and (let () (declare (not safe)) (##pair? _code18226_))
                         (let ((__tmp18340
                                (let ((__tmp18341
                                       (let ((__tmp18342
                                              (let ()
                                                (declare (not safe))
                                                (##car _code18226_))))
                                         (declare (not safe))
                                         (##sourcify __tmp18342 _src18220_))))
                                  (declare (not safe))
                                  (##source-code __tmp18341))))
                           (declare (not safe))
                           (##memq __tmp18340 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src18220_ _src18220_ '-3))
                      (let ((__tmp18337
                             (let ((__tmp18338
                                    (let ((__tmp18339
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code18226_))))
                                      (declare (not safe))
                                      (##sourcify __tmp18339 _src18220_))))
                               (declare (not safe))
                               (##form-size __tmp18338))))
                        (declare (not safe))
                        (_make-descr18224_ __tmp18337)))
                    (let () (declare (not safe)) (_fail!18223_))))))))
    (define __source->syntax
      (lambda (_src18214_)
        (let _recur18216_ ((_e18218_ _src18214_))
          (if (let () (declare (not safe)) (##source? _e18218_))
              (let ((__tmp18350
                     (let ((__tmp18351
                            (let ()
                              (declare (not safe))
                              (##source-code _e18218_))))
                       (declare (not safe))
                       (_recur18216_ __tmp18351)))
                    (__tmp18349
                     (let () (declare (not safe)) (##source-locat _e18218_))))
                (declare (not safe))
                (##structure AST::t __tmp18350 __tmp18349))
              (if (let () (declare (not safe)) (pair? _e18218_))
                  (let ((__tmp18347
                         (let ((__tmp18348
                                (let ()
                                  (declare (not safe))
                                  (##car _e18218_))))
                           (declare (not safe))
                           (_recur18216_ __tmp18348)))
                        (__tmp18345
                         (let ((__tmp18346
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e18218_))))
                           (declare (not safe))
                           (_recur18216_ __tmp18346))))
                    (declare (not safe))
                    (cons __tmp18347 __tmp18345))
                  (if (let () (declare (not safe)) (vector? _e18218_))
                      (vector-map _recur18216_ _e18218_)
                      (if (let () (declare (not safe)) (box? _e18218_))
                          (let ((__tmp18343
                                 (let ((__tmp18344 (unbox _e18218_)))
                                   (declare (not safe))
                                   (_recur18216_ __tmp18344))))
                            (declare (not safe))
                            (box __tmp18343))
                          _e18218_)))))))
    (define __compile-top-source
      (lambda (_stx18212_)
        (let ((__tmp18352
               (let () (declare (not safe)) (__compile-top _stx18212_))))
          (declare (not safe))
          (cons '__noexpand: __tmp18352))))
    (define __compile-top
      (lambda (_stx18210_)
        (let ((__tmp18353 (gx#core-compile-top-syntax _stx18210_)))
          (declare (not safe))
          (__compile __tmp18353))))
    (define __eval-import
      (lambda (_in18191_)
        (letrec* ((_mods18193_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import118194_
                   (lambda (_in18201_ _phi18202_)
                     (if (gx#module-import? _in18201_)
                         (let ((_iphi18204_
                                (fx+ _phi18202_
                                     (gx#module-import-phi _in18201_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi18204_))
                               (let ((__tmp18355
                                      (gx#module-export-context
                                       (gx#module-import-source _in18201_))))
                                 (declare (not safe))
                                 (_eval118195_ __tmp18355))
                               '#!void))
                         (if (gx#module-context? _in18201_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi18202_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval118195_ _in18201_))
                                 '#!void)
                             (if (gx#import-set? _in18201_)
                                 (let ((_iphi18206_
                                        (fx+ _phi18202_
                                             (gx#import-set-phi _in18201_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi18206_))
                                       (let ((__tmp18354
                                              (gx#import-set-source
                                               _in18201_)))
                                         (declare (not safe))
                                         (_eval118195_ __tmp18354))
                                       (if (fxpositive? _iphi18206_)
                                           (for-each
                                            (lambda (_in18208_)
                                              (let ()
                                                (declare (not safe))
                                                (_import118194_
                                                 _in18208_
                                                 _iphi18206_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in18201_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in18201_))))))
                  (_eval118195_
                   (lambda (_ctx18199_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods18193_ _ctx18199_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods18193_ _ctx18199_ '#t))
                           (__eval-module _ctx18199_))))))
          (if (let () (declare (not safe)) (pair? _in18191_))
              (for-each
               (lambda (_in18197_)
                 (let () (declare (not safe)) (_import118194_ _in18197_ '0)))
               _in18191_)
              (let () (declare (not safe)) (_import118194_ _in18191_ '0))))))
    (define __eval-module
      (lambda (_obj18184_)
        (let* ((_key18186_
                (if (gx#module-context? _obj18184_)
                    (gx#module-context-path _obj18184_)
                    _obj18184_))
               (_$e18188_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key18186_ '#f))))
          (if _$e18188_ (values _$e18188_) (gx#core-eval-module _obj18184_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules18119_)
        (let* ((_home18121_ (let () (declare (not safe)) (gerbil-home)))
               (_libdir18123_ (path-expand '"lib" _home18121_))
               (_loadpath18132_
                (let ((_$e18125_ (getenv '"GERBIL_LOADPATH" '#f)))
                  (if _$e18125_
                      ((lambda (_envvar18128_)
                         (let ((__tmp18357
                                (lambda (_x18130_)
                                  (let ((__tmp18358
                                         (let ()
                                           (declare (not safe))
                                           (string-empty? _x18130_))))
                                    (declare (not safe))
                                    (not __tmp18358))))
                               (__tmp18356
                                (let ()
                                  (declare (not safe))
                                  (string-split _envvar18128_ '#\:))))
                           (declare (not safe))
                           (filter __tmp18357 __tmp18356)))
                       _$e18125_)
                      '())))
               (_userpath18134_
                (path-expand '"lib" (getenv '"GERBIL_PATH" '"~/.gerbil")))
               (_loadpath18136_
                (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                    _loadpath18132_
                    (let ()
                      (declare (not safe))
                      (cons _userpath18134_ _loadpath18132_)))))
          (current-module-library-path
           (let () (declare (not safe)) (cons _libdir18123_ _loadpath18136_))))
        (let* ((_registry-entry18141_
                (lambda (_m18139_)
                  (let () (declare (not safe)) (cons _m18139_ 'builtin))))
               (_module-registry18181_
                (let _lp18143_ ((_rest18145_ _builtin-modules18119_)
                                (_registry18146_ '()))
                  (let* ((_rest1814718155_ _rest18145_)
                         (_else1814918163_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (list->table _registry18146_))))
                         (_K1815118169_
                          (lambda (_rest18166_ _mod18167_)
                            (let ((__tmp18359
                                   (let ((__tmp18363
                                          (let ((__tmp18364
                                                 (string-append
                                                  _mod18167_
                                                  '"__0")))
                                            (declare (not safe))
                                            (_registry-entry18141_
                                             __tmp18364)))
                                         (__tmp18360
                                          (let ((__tmp18361
                                                 (let ((__tmp18362
                                                        (string-append
                                                         _mod18167_
                                                         '"__rt")))
                                                   (declare (not safe))
                                                   (_registry-entry18141_
                                                    __tmp18362))))
                                            (declare (not safe))
                                            (cons __tmp18361
                                                  _registry18146_))))
                                     (declare (not safe))
                                     (cons __tmp18363 __tmp18360))))
                              (declare (not safe))
                              (_lp18143_ _rest18166_ __tmp18359)))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest1814718155_))
                        (let ((_hd1815218172_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest1814718155_)))
                              (_tl1815318174_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest1814718155_))))
                          (let* ((_mod18177_ _hd1815218172_)
                                 (_rest18179_ _tl1815318174_))
                            (declare (not safe))
                            (_K1815118169_ _rest18179_ _mod18177_)))
                        (let () (declare (not safe)) (_else1814918163_)))))))
          (current-module-registry _module-registry18181_))
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
