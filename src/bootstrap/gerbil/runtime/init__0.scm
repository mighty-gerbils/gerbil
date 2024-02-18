(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708247274)
  (begin
    (define __loading-scheme-source (make-parameter '#f))
    (define __init-gx!
      (lambda ()
        (gx#current-expander-marks '())
        (gx#current-expander-phi '0)
        (gx#current-expander-context (gx#make-top-context))
        (gx#current-expander-module-library-path (current-module-library-path))
        (gx#current-expander-module-registry (make-hash-table))
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
        (letrec* ((_+readtable+127278_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core127280_ (gx#import-module ':gerbil/core))
                 (_pre127282_ (gx#make-prelude-context _core127280_)))
            (gx#current-expander-module-prelude _pre127282_)
            (gx#core-bind-root-syntax! ':<core> _pre127282_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port127285_)
             (input-port-readtable-set! _port127285_ _+readtable+127278_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port127287_)
             (output-port-readtable-set!
              _port127287_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port127287_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline127275_) '#!void))
    (define load-scheme
      (lambda (_path127270_)
        (let ((__tmp131356
               (lambda ()
                 (let ((__tmp131357 (lambda _args127273_ '#f)))
                   (declare (not safe))
                   (##load _path127270_ __tmp131357 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp131356
           __loading-scheme-source
           _path127270_))))
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
      (lambda _paths127265_
        (apply add-library-load-path _paths127265_)
        (apply add-expander-load-path _paths127265_)))
    (define add-library-load-path
      (lambda _paths127254_
        (let* ((_current127256_ (current-module-library-path))
               (_paths127258_ (map path-expand _paths127254_))
               (_paths127262_
                (let ((__tmp131358
                       (lambda (_x127260_)
                         (let ((__tmp131359
                                (member _x127260_ _current127256_)))
                           (declare (not safe))
                           (not __tmp131359)))))
                  (declare (not safe))
                  (filter __tmp131358 _paths127258_))))
          (current-module-library-path
           (append _current127256_ _paths127262_)))))
    (define add-expander-load-path
      (lambda _paths127243_
        (let* ((_current127245_ (gx#current-expander-module-library-path))
               (_paths127247_ (map path-expand _paths127243_))
               (_paths127251_
                (let ((__tmp131360
                       (lambda (_x127249_)
                         (let ((__tmp131361
                                (member _x127249_ _current127245_)))
                           (declare (not safe))
                           (not __tmp131361)))))
                  (declare (not safe))
                  (filter __tmp131360 _paths127247_))))
          (gx#current-expander-module-library-path
           (append _current127245_ _paths127251_)))))
    (define cons-load-path
      (lambda _paths127241_
        (apply cons-library-load-path _paths127241_)
        (apply cons-expander-load-path _paths127241_)))
    (define cons-library-load-path
      (lambda _paths127236_
        (let ((_current127238_ (current-module-library-path))
              (_paths127239_ (map path-expand _paths127236_)))
          (current-module-library-path
           (append _paths127239_ _current127238_)))))
    (define cons-expander-load-path
      (lambda _paths127231_
        (let ((_current127233_ (gx#current-expander-module-library-path))
              (_paths127234_ (map path-expand _paths127231_)))
          (gx#current-expander-module-library-path
           (append _paths127234_ _current127233_)))))
    (define with-cons-load-path
      (lambda (_thunk127227_ . _paths127228_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk127227_
                        _paths127228_))
               _paths127228_)))
    (define with-cons-library-load-path
      (lambda (_thunk127220_ . _paths127221_)
        (let ((_current127223_ (current-module-library-path))
              (_paths127224_ (map path-expand _paths127221_)))
          (let ((__tmp131363 (lambda () (_thunk127220_)))
                (__tmp131362 (append _paths127224_ _current127223_)))
            (declare (not safe))
            (call-with-parameters
             __tmp131363
             current-module-library-path
             __tmp131362)))))
    (define with-cons-expander-load-path
      (lambda (_thunk127213_ . _paths127214_)
        (let ((_current127216_ (gx#current-expander-module-library-path))
              (_paths127217_ (map path-expand _paths127214_)))
          (let ((__tmp131365 (lambda () (_thunk127213_)))
                (__tmp131364 (append _paths127217_ _current127216_)))
            (declare (not safe))
            (call-with-parameters
             __tmp131365
             gx#current-expander-module-library-path
             __tmp131364)))))
    (define __expand-source
      (lambda (_src127199_)
        (letrec ((_expand127201_
                  (lambda (_src127211_)
                    (let ((__tmp131366
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src127211_)))))
                      (declare (not safe))
                      (__compile-top __tmp131366))))
                 (_no-expand127202_
                  (lambda (_src127207_)
                    (if (__loading-scheme-source)
                        _src127207_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src127207_))
                            (let ((_code127209_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src127207_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code127209_))
                                  (if (let ((__tmp131367
                                             (let ()
                                               (declare (not safe))
                                               (##car _code127209_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp131367))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code127209_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e127204_
                 (let ()
                   (declare (not safe))
                   (_no-expand127202_ _src127199_))))
            (if _$e127204_
                _$e127204_
                (let () (declare (not safe)) (_expand127201_ _src127199_)))))))
    (define __macro-descr
      (lambda (_src127185_ _def-syntax?127186_)
        (letrec ((_fail!127188_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src127185_))))
                 (_make-descr127189_
                  (lambda (_size127193_)
                    (let ((_expander127196_
                           (let ((__tmp131368
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src127185_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp131368
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander127196_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?127186_
                             _size127193_
                             _expander127196_
                             _src127185_))
                          (let () (declare (not safe)) (_fail!127188_)))))))
          (if _def-syntax?127186_
              (let () (declare (not safe)) (_make-descr127189_ '-1))
              (let ((_code127191_
                     (let ()
                       (declare (not safe))
                       (##source-code _src127185_))))
                (if (and (let () (declare (not safe)) (##pair? _code127191_))
                         (let ((__tmp131372
                                (let ((__tmp131373
                                       (let ((__tmp131374
                                              (let ()
                                                (declare (not safe))
                                                (##car _code127191_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp131374
                                          _src127185_))))
                                  (declare (not safe))
                                  (##source-code __tmp131373))))
                           (declare (not safe))
                           (##memq __tmp131372 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src127185_ _src127185_ '-3))
                      (let ((__tmp131369
                             (let ((__tmp131370
                                    (let ((__tmp131371
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code127191_))))
                                      (declare (not safe))
                                      (##sourcify __tmp131371 _src127185_))))
                               (declare (not safe))
                               (##form-size __tmp131370))))
                        (declare (not safe))
                        (_make-descr127189_ __tmp131369)))
                    (let () (declare (not safe)) (_fail!127188_))))))))
    (define __source->syntax
      (lambda (_src127179_)
        (let _recur127181_ ((_e127183_ _src127179_))
          (if (let () (declare (not safe)) (##source? _e127183_))
              (let ((__tmp131382
                     (let ((__tmp131383
                            (let ()
                              (declare (not safe))
                              (##source-code _e127183_))))
                       (declare (not safe))
                       (_recur127181_ __tmp131383)))
                    (__tmp131381
                     (let () (declare (not safe)) (##source-locat _e127183_))))
                (declare (not safe))
                (##structure AST::t __tmp131382 __tmp131381))
              (if (let () (declare (not safe)) (pair? _e127183_))
                  (let ((__tmp131379
                         (let ((__tmp131380
                                (let ()
                                  (declare (not safe))
                                  (##car _e127183_))))
                           (declare (not safe))
                           (_recur127181_ __tmp131380)))
                        (__tmp131377
                         (let ((__tmp131378
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e127183_))))
                           (declare (not safe))
                           (_recur127181_ __tmp131378))))
                    (declare (not safe))
                    (cons __tmp131379 __tmp131377))
                  (if (let () (declare (not safe)) (vector? _e127183_))
                      (vector-map _recur127181_ _e127183_)
                      (if (let () (declare (not safe)) (box? _e127183_))
                          (let ((__tmp131375
                                 (let ((__tmp131376 (unbox _e127183_)))
                                   (declare (not safe))
                                   (_recur127181_ __tmp131376))))
                            (declare (not safe))
                            (box __tmp131375))
                          _e127183_)))))))
    (define __compile-top-source
      (lambda (_stx127177_)
        (let ((__tmp131384
               (let () (declare (not safe)) (__compile-top _stx127177_))))
          (declare (not safe))
          (cons '__noexpand: __tmp131384))))
    (define __compile-top
      (lambda (_stx127175_)
        (let ((__tmp131385 (gx#core-compile-top-syntax _stx127175_)))
          (declare (not safe))
          (__compile __tmp131385))))
    (define __eval-import
      (lambda (_in127156_)
        (letrec* ((_mods127158_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import1127159_
                   (lambda (_in127166_ _phi127167_)
                     (if (gx#module-import? _in127166_)
                         (let ((_iphi127169_
                                (fx+ _phi127167_
                                     (gx#module-import-phi _in127166_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi127169_))
                               (let ((__tmp131387
                                      (gx#module-export-context
                                       (gx#module-import-source _in127166_))))
                                 (declare (not safe))
                                 (_eval1127160_ __tmp131387))
                               '#!void))
                         (if (gx#module-context? _in127166_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi127167_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1127160_ _in127166_))
                                 '#!void)
                             (if (gx#import-set? _in127166_)
                                 (let ((_iphi127171_
                                        (fx+ _phi127167_
                                             (gx#import-set-phi _in127166_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi127171_))
                                       (let ((__tmp131386
                                              (gx#import-set-source
                                               _in127166_)))
                                         (declare (not safe))
                                         (_eval1127160_ __tmp131386))
                                       (if (fxpositive? _iphi127171_)
                                           (for-each
                                            (lambda (_in127173_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1127159_
                                                 _in127173_
                                                 _iphi127171_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in127166_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in127166_))))))
                  (_eval1127160_
                   (lambda (_ctx127164_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods127158_ _ctx127164_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods127158_ _ctx127164_ '#t))
                           (__eval-module _ctx127164_))))))
          (if (let () (declare (not safe)) (pair? _in127156_))
              (for-each
               (lambda (_in127162_)
                 (let () (declare (not safe)) (_import1127159_ _in127162_ '0)))
               _in127156_)
              (let () (declare (not safe)) (_import1127159_ _in127156_ '0))))))
    (define __eval-module
      (lambda (_obj127149_)
        (let* ((_key127151_
                (if (gx#module-context? _obj127149_)
                    (gx#module-context-path _obj127149_)
                    _obj127149_))
               (_$e127153_
                (let ()
                  (declare (not safe))
                  (hash-get __*modules* _key127151_))))
          (if _$e127153_
              (values _$e127153_)
              (gx#core-eval-module _obj127149_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules127084_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home127086_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir127088_ (path-expand '"lib" _home127086_))
                     (_userpath127090_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath127092_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir127088_ '()))
                          (let ((__tmp131388
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir127088_ '()))))
                            (declare (not safe))
                            (cons _userpath127090_ __tmp131388))))
                     (_loadpath127101_
                      (let ((_$e127094_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e127094_
                            ((lambda (_envvar127097_)
                               (append (let ((__tmp131390
                                              (lambda (_x127099_)
                                                (let ((__tmp131391
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x127099_))))
                                                  (declare (not safe))
                                                  (not __tmp131391))))
                                             (__tmp131389
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar127097_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp131390 __tmp131389))
                                       _loadpath127092_))
                             _$e127094_)
                            _loadpath127092_))))
                (current-module-library-path _loadpath127101_))
              (let* ((_registry-entry127106_
                      (lambda (_m127104_)
                        (let ()
                          (declare (not safe))
                          (cons _m127104_ 'builtin))))
                     (_module-registry127146_
                      (let _lp127108_ ((_rest127110_ _builtin-modules127084_)
                                       (_registry127111_ '()))
                        (let* ((_rest127112127120_ _rest127110_)
                               (_else127114127128_
                                (lambda ()
                                  (list->hash-table _registry127111_)))
                               (_K127116127134_
                                (lambda (_rest127131_ _mod127132_)
                                  (let ((__tmp131392
                                         (let ((__tmp131396
                                                (let ((__tmp131397
                                                       (string-append
                                                        _mod127132_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry127106_
                                                   __tmp131397)))
                                               (__tmp131393
                                                (let ((__tmp131394
                                                       (let ((__tmp131395
                                                              (string-append
                                                               _mod127132_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry127106_
                                                          __tmp131395))))
                                                  (declare (not safe))
                                                  (cons __tmp131394
                                                        _registry127111_))))
                                           (declare (not safe))
                                           (cons __tmp131396 __tmp131393))))
                                    (declare (not safe))
                                    (_lp127108_ _rest127131_ __tmp131392)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest127112127120_))
                              (let ((_hd127117127137_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest127112127120_)))
                                    (_tl127118127139_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest127112127120_))))
                                (let* ((_mod127142_ _hd127117127137_)
                                       (_rest127144_ _tl127118127139_))
                                  (declare (not safe))
                                  (_K127116127134_ _rest127144_ _mod127142_)))
                              (let ()
                                (declare (not safe))
                                (_else127114127128_)))))))
                (current-module-registry _module-registry127146_))
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
