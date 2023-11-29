(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1701931848)
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
        (letrec* ((_+readtable+18375_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core18377_ (gx#import-module ':gerbil/core))
                 (_pre18379_ (gx#make-prelude-context _core18377_)))
            (gx#current-expander-module-prelude _pre18379_)
            (gx#core-bind-root-syntax! ':<core> _pre18379_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port18382_)
             (input-port-readtable-set! _port18382_ _+readtable+18375_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port18384_)
             (output-port-readtable-set!
              _port18384_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port18384_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline18372_) '#!void))
    (define load-scheme
      (lambda (_path18367_)
        (let ((__tmp18386
               (lambda ()
                 (let ((__tmp18387 (lambda _args18370_ '#f)))
                   (declare (not safe))
                   (##load _path18367_ __tmp18387 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp18386
           __loading-scheme-source
           _path18367_))))
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
      (lambda _paths18362_
        (apply add-library-load-path _paths18362_)
        (apply add-expander-load-path _paths18362_)))
    (define add-library-load-path
      (lambda _paths18351_
        (let* ((_current18353_ (current-module-library-path))
               (_paths18355_ (map path-expand _paths18351_))
               (_paths18359_
                (let ((__tmp18388
                       (lambda (_x18357_)
                         (let ((__tmp18389 (member _x18357_ _current18353_)))
                           (declare (not safe))
                           (not __tmp18389)))))
                  (declare (not safe))
                  (filter __tmp18388 _paths18355_))))
          (current-module-library-path (append _current18353_ _paths18359_)))))
    (define add-expander-load-path
      (lambda _paths18340_
        (let* ((_current18342_ (gx#current-expander-module-library-path))
               (_paths18344_ (map path-expand _paths18340_))
               (_paths18348_
                (let ((__tmp18390
                       (lambda (_x18346_)
                         (let ((__tmp18391 (member _x18346_ _current18342_)))
                           (declare (not safe))
                           (not __tmp18391)))))
                  (declare (not safe))
                  (filter __tmp18390 _paths18344_))))
          (gx#current-expander-module-library-path
           (append _current18342_ _paths18348_)))))
    (define cons-load-path
      (lambda _paths18338_
        (apply cons-library-load-path _paths18338_)
        (apply cons-expander-load-path _paths18338_)))
    (define cons-library-load-path
      (lambda _paths18333_
        (let ((_current18335_ (current-module-library-path))
              (_paths18336_ (map path-expand _paths18333_)))
          (current-module-library-path (append _paths18336_ _current18335_)))))
    (define cons-expander-load-path
      (lambda _paths18328_
        (let ((_current18330_ (gx#current-expander-module-library-path))
              (_paths18331_ (map path-expand _paths18328_)))
          (gx#current-expander-module-library-path
           (append _paths18331_ _current18330_)))))
    (define with-cons-load-path
      (lambda (_thunk18324_ . _paths18325_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk18324_
                        _paths18325_))
               _paths18325_)))
    (define with-cons-library-load-path
      (lambda (_thunk18317_ . _paths18318_)
        (let ((_current18320_ (current-module-library-path))
              (_paths18321_ (map path-expand _paths18318_)))
          (let ((__tmp18393 (lambda () (_thunk18317_)))
                (__tmp18392 (append _paths18321_ _current18320_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18393
             current-module-library-path
             __tmp18392)))))
    (define with-cons-expander-load-path
      (lambda (_thunk18310_ . _paths18311_)
        (let ((_current18313_ (gx#current-expander-module-library-path))
              (_paths18314_ (map path-expand _paths18311_)))
          (let ((__tmp18395 (lambda () (_thunk18310_)))
                (__tmp18394 (append _paths18314_ _current18313_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18395
             gx#current-expander-module-library-path
             __tmp18394)))))
    (define __expand-source
      (lambda (_src18296_)
        (letrec ((_expand18298_
                  (lambda (_src18308_)
                    (let ((__tmp18396
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src18308_)))))
                      (declare (not safe))
                      (__compile-top __tmp18396))))
                 (_no-expand18299_
                  (lambda (_src18304_)
                    (if (__loading-scheme-source)
                        _src18304_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src18304_))
                            (let ((_code18306_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src18304_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code18306_))
                                  (if (let ((__tmp18397
                                             (let ()
                                               (declare (not safe))
                                               (##car _code18306_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp18397))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code18306_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e18301_
                 (let () (declare (not safe)) (_no-expand18299_ _src18296_))))
            (if _$e18301_
                _$e18301_
                (let () (declare (not safe)) (_expand18298_ _src18296_)))))))
    (define __macro-descr
      (lambda (_src18282_ _def-syntax?18283_)
        (letrec ((_fail!18285_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src18282_))))
                 (_make-descr18286_
                  (lambda (_size18290_)
                    (let ((_expander18293_
                           (let ((__tmp18398
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src18282_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp18398
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander18293_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?18283_
                             _size18290_
                             _expander18293_
                             _src18282_))
                          (let () (declare (not safe)) (_fail!18285_)))))))
          (if _def-syntax?18283_
              (let () (declare (not safe)) (_make-descr18286_ '-1))
              (let ((_code18288_
                     (let () (declare (not safe)) (##source-code _src18282_))))
                (if (and (let () (declare (not safe)) (##pair? _code18288_))
                         (let ((__tmp18402
                                (let ((__tmp18403
                                       (let ((__tmp18404
                                              (let ()
                                                (declare (not safe))
                                                (##car _code18288_))))
                                         (declare (not safe))
                                         (##sourcify __tmp18404 _src18282_))))
                                  (declare (not safe))
                                  (##source-code __tmp18403))))
                           (declare (not safe))
                           (##memq __tmp18402 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src18282_ _src18282_ '-3))
                      (let ((__tmp18399
                             (let ((__tmp18400
                                    (let ((__tmp18401
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code18288_))))
                                      (declare (not safe))
                                      (##sourcify __tmp18401 _src18282_))))
                               (declare (not safe))
                               (##form-size __tmp18400))))
                        (declare (not safe))
                        (_make-descr18286_ __tmp18399)))
                    (let () (declare (not safe)) (_fail!18285_))))))))
    (define __source->syntax
      (lambda (_src18276_)
        (let _recur18278_ ((_e18280_ _src18276_))
          (if (let () (declare (not safe)) (##source? _e18280_))
              (let ((__tmp18412
                     (let ((__tmp18413
                            (let ()
                              (declare (not safe))
                              (##source-code _e18280_))))
                       (declare (not safe))
                       (_recur18278_ __tmp18413)))
                    (__tmp18411
                     (let () (declare (not safe)) (##source-locat _e18280_))))
                (declare (not safe))
                (##structure AST::t __tmp18412 __tmp18411))
              (if (let () (declare (not safe)) (pair? _e18280_))
                  (let ((__tmp18409
                         (let ((__tmp18410
                                (let ()
                                  (declare (not safe))
                                  (##car _e18280_))))
                           (declare (not safe))
                           (_recur18278_ __tmp18410)))
                        (__tmp18407
                         (let ((__tmp18408
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e18280_))))
                           (declare (not safe))
                           (_recur18278_ __tmp18408))))
                    (declare (not safe))
                    (cons __tmp18409 __tmp18407))
                  (if (let () (declare (not safe)) (vector? _e18280_))
                      (vector-map _recur18278_ _e18280_)
                      (if (let () (declare (not safe)) (box? _e18280_))
                          (let ((__tmp18405
                                 (let ((__tmp18406 (unbox _e18280_)))
                                   (declare (not safe))
                                   (_recur18278_ __tmp18406))))
                            (declare (not safe))
                            (box __tmp18405))
                          _e18280_)))))))
    (define __compile-top-source
      (lambda (_stx18274_)
        (let ((__tmp18414
               (let () (declare (not safe)) (__compile-top _stx18274_))))
          (declare (not safe))
          (cons '__noexpand: __tmp18414))))
    (define __compile-top
      (lambda (_stx18272_)
        (let ((__tmp18415 (gx#core-compile-top-syntax _stx18272_)))
          (declare (not safe))
          (__compile __tmp18415))))
    (define __eval-import
      (lambda (_in18253_)
        (letrec* ((_mods18255_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import118256_
                   (lambda (_in18263_ _phi18264_)
                     (if (gx#module-import? _in18263_)
                         (let ((_iphi18266_
                                (fx+ _phi18264_
                                     (gx#module-import-phi _in18263_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi18266_))
                               (let ((__tmp18417
                                      (gx#module-export-context
                                       (gx#module-import-source _in18263_))))
                                 (declare (not safe))
                                 (_eval118257_ __tmp18417))
                               '#!void))
                         (if (gx#module-context? _in18263_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi18264_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval118257_ _in18263_))
                                 '#!void)
                             (if (gx#import-set? _in18263_)
                                 (let ((_iphi18268_
                                        (fx+ _phi18264_
                                             (gx#import-set-phi _in18263_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi18268_))
                                       (let ((__tmp18416
                                              (gx#import-set-source
                                               _in18263_)))
                                         (declare (not safe))
                                         (_eval118257_ __tmp18416))
                                       (if (fxpositive? _iphi18268_)
                                           (for-each
                                            (lambda (_in18270_)
                                              (let ()
                                                (declare (not safe))
                                                (_import118256_
                                                 _in18270_
                                                 _iphi18268_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in18263_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in18263_))))))
                  (_eval118257_
                   (lambda (_ctx18261_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods18255_ _ctx18261_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods18255_ _ctx18261_ '#t))
                           (__eval-module _ctx18261_))))))
          (if (let () (declare (not safe)) (pair? _in18253_))
              (for-each
               (lambda (_in18259_)
                 (let () (declare (not safe)) (_import118256_ _in18259_ '0)))
               _in18253_)
              (let () (declare (not safe)) (_import118256_ _in18253_ '0))))))
    (define __eval-module
      (lambda (_obj18246_)
        (let* ((_key18248_
                (if (gx#module-context? _obj18246_)
                    (gx#module-context-path _obj18246_)
                    _obj18246_))
               (_$e18250_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key18248_ '#f))))
          (if _$e18250_ (values _$e18250_) (gx#core-eval-module _obj18246_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules18181_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home18183_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir18185_ (path-expand '"lib" _home18183_))
                     (_userpath18187_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath18189_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir18185_ '()))
                          (let ((__tmp18418
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir18185_ '()))))
                            (declare (not safe))
                            (cons _userpath18187_ __tmp18418))))
                     (_loadpath18198_
                      (let ((_$e18191_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e18191_
                            ((lambda (_envvar18194_)
                               (append (let ((__tmp18420
                                              (lambda (_x18196_)
                                                (let ((__tmp18421
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x18196_))))
                                                  (declare (not safe))
                                                  (not __tmp18421))))
                                             (__tmp18419
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar18194_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp18420 __tmp18419))
                                       _loadpath18189_))
                             _$e18191_)
                            _loadpath18189_))))
                (current-module-library-path _loadpath18198_))
              (let* ((_registry-entry18203_
                      (lambda (_m18201_)
                        (let ()
                          (declare (not safe))
                          (cons _m18201_ 'builtin))))
                     (_module-registry18243_
                      (let _lp18205_ ((_rest18207_ _builtin-modules18181_)
                                      (_registry18208_ '()))
                        (let* ((_rest1820918217_ _rest18207_)
                               (_else1821118225_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry18208_))))
                               (_K1821318231_
                                (lambda (_rest18228_ _mod18229_)
                                  (let ((__tmp18422
                                         (let ((__tmp18426
                                                (let ((__tmp18427
                                                       (string-append
                                                        _mod18229_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry18203_
                                                   __tmp18427)))
                                               (__tmp18423
                                                (let ((__tmp18424
                                                       (let ((__tmp18425
                                                              (string-append
                                                               _mod18229_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry18203_
                                                          __tmp18425))))
                                                  (declare (not safe))
                                                  (cons __tmp18424
                                                        _registry18208_))))
                                           (declare (not safe))
                                           (cons __tmp18426 __tmp18423))))
                                    (declare (not safe))
                                    (_lp18205_ _rest18228_ __tmp18422)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1820918217_))
                              (let ((_hd1821418234_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1820918217_)))
                                    (_tl1821518236_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1820918217_))))
                                (let* ((_mod18239_ _hd1821418234_)
                                       (_rest18241_ _tl1821518236_))
                                  (declare (not safe))
                                  (_K1821318231_ _rest18241_ _mod18239_)))
                              (let ()
                                (declare (not safe))
                                (_else1821118225_)))))))
                (current-module-registry _module-registry18243_))
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
