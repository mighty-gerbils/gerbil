(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1704735467)
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
        (letrec* ((_+readtable+18331_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core18333_ (gx#import-module ':gerbil/core))
                 (_pre18335_ (gx#make-prelude-context _core18333_)))
            (gx#current-expander-module-prelude _pre18335_)
            (gx#core-bind-root-syntax! ':<core> _pre18335_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port18338_)
             (input-port-readtable-set! _port18338_ _+readtable+18331_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port18340_)
             (output-port-readtable-set!
              _port18340_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port18340_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline18328_) '#!void))
    (define load-scheme
      (lambda (_path18323_)
        (let ((__tmp18342
               (lambda ()
                 (let ((__tmp18343 (lambda _args18326_ '#f)))
                   (declare (not safe))
                   (##load _path18323_ __tmp18343 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp18342
           __loading-scheme-source
           _path18323_))))
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
      (lambda _paths18318_
        (apply add-library-load-path _paths18318_)
        (apply add-expander-load-path _paths18318_)))
    (define add-library-load-path
      (lambda _paths18307_
        (let* ((_current18309_ (current-module-library-path))
               (_paths18311_ (map path-expand _paths18307_))
               (_paths18315_
                (let ((__tmp18344
                       (lambda (_x18313_)
                         (let ((__tmp18345 (member _x18313_ _current18309_)))
                           (declare (not safe))
                           (not __tmp18345)))))
                  (declare (not safe))
                  (filter __tmp18344 _paths18311_))))
          (current-module-library-path (append _current18309_ _paths18315_)))))
    (define add-expander-load-path
      (lambda _paths18296_
        (let* ((_current18298_ (gx#current-expander-module-library-path))
               (_paths18300_ (map path-expand _paths18296_))
               (_paths18304_
                (let ((__tmp18346
                       (lambda (_x18302_)
                         (let ((__tmp18347 (member _x18302_ _current18298_)))
                           (declare (not safe))
                           (not __tmp18347)))))
                  (declare (not safe))
                  (filter __tmp18346 _paths18300_))))
          (gx#current-expander-module-library-path
           (append _current18298_ _paths18304_)))))
    (define cons-load-path
      (lambda _paths18294_
        (apply cons-library-load-path _paths18294_)
        (apply cons-expander-load-path _paths18294_)))
    (define cons-library-load-path
      (lambda _paths18289_
        (let ((_current18291_ (current-module-library-path))
              (_paths18292_ (map path-expand _paths18289_)))
          (current-module-library-path (append _paths18292_ _current18291_)))))
    (define cons-expander-load-path
      (lambda _paths18284_
        (let ((_current18286_ (gx#current-expander-module-library-path))
              (_paths18287_ (map path-expand _paths18284_)))
          (gx#current-expander-module-library-path
           (append _paths18287_ _current18286_)))))
    (define with-cons-load-path
      (lambda (_thunk18280_ . _paths18281_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk18280_
                        _paths18281_))
               _paths18281_)))
    (define with-cons-library-load-path
      (lambda (_thunk18273_ . _paths18274_)
        (let ((_current18276_ (current-module-library-path))
              (_paths18277_ (map path-expand _paths18274_)))
          (let ((__tmp18349 (lambda () (_thunk18273_)))
                (__tmp18348 (append _paths18277_ _current18276_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18349
             current-module-library-path
             __tmp18348)))))
    (define with-cons-expander-load-path
      (lambda (_thunk18266_ . _paths18267_)
        (let ((_current18269_ (gx#current-expander-module-library-path))
              (_paths18270_ (map path-expand _paths18267_)))
          (let ((__tmp18351 (lambda () (_thunk18266_)))
                (__tmp18350 (append _paths18270_ _current18269_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18351
             gx#current-expander-module-library-path
             __tmp18350)))))
    (define __expand-source
      (lambda (_src18252_)
        (letrec ((_expand18254_
                  (lambda (_src18264_)
                    (let ((__tmp18352
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src18264_)))))
                      (declare (not safe))
                      (__compile-top __tmp18352))))
                 (_no-expand18255_
                  (lambda (_src18260_)
                    (if (__loading-scheme-source)
                        _src18260_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src18260_))
                            (let ((_code18262_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src18260_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code18262_))
                                  (if (let ((__tmp18353
                                             (let ()
                                               (declare (not safe))
                                               (##car _code18262_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp18353))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code18262_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e18257_
                 (let () (declare (not safe)) (_no-expand18255_ _src18252_))))
            (if _$e18257_
                _$e18257_
                (let () (declare (not safe)) (_expand18254_ _src18252_)))))))
    (define __macro-descr
      (lambda (_src18238_ _def-syntax?18239_)
        (letrec ((_fail!18241_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src18238_))))
                 (_make-descr18242_
                  (lambda (_size18246_)
                    (let ((_expander18249_
                           (let ((__tmp18354
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src18238_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp18354
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander18249_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?18239_
                             _size18246_
                             _expander18249_
                             _src18238_))
                          (let () (declare (not safe)) (_fail!18241_)))))))
          (if _def-syntax?18239_
              (let () (declare (not safe)) (_make-descr18242_ '-1))
              (let ((_code18244_
                     (let () (declare (not safe)) (##source-code _src18238_))))
                (if (and (let () (declare (not safe)) (##pair? _code18244_))
                         (let ((__tmp18358
                                (let ((__tmp18359
                                       (let ((__tmp18360
                                              (let ()
                                                (declare (not safe))
                                                (##car _code18244_))))
                                         (declare (not safe))
                                         (##sourcify __tmp18360 _src18238_))))
                                  (declare (not safe))
                                  (##source-code __tmp18359))))
                           (declare (not safe))
                           (##memq __tmp18358 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src18238_ _src18238_ '-3))
                      (let ((__tmp18355
                             (let ((__tmp18356
                                    (let ((__tmp18357
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code18244_))))
                                      (declare (not safe))
                                      (##sourcify __tmp18357 _src18238_))))
                               (declare (not safe))
                               (##form-size __tmp18356))))
                        (declare (not safe))
                        (_make-descr18242_ __tmp18355)))
                    (let () (declare (not safe)) (_fail!18241_))))))))
    (define __source->syntax
      (lambda (_src18232_)
        (let _recur18234_ ((_e18236_ _src18232_))
          (if (let () (declare (not safe)) (##source? _e18236_))
              (let ((__tmp18368
                     (let ((__tmp18369
                            (let ()
                              (declare (not safe))
                              (##source-code _e18236_))))
                       (declare (not safe))
                       (_recur18234_ __tmp18369)))
                    (__tmp18367
                     (let () (declare (not safe)) (##source-locat _e18236_))))
                (declare (not safe))
                (##structure AST::t __tmp18368 __tmp18367))
              (if (let () (declare (not safe)) (pair? _e18236_))
                  (let ((__tmp18365
                         (let ((__tmp18366
                                (let ()
                                  (declare (not safe))
                                  (##car _e18236_))))
                           (declare (not safe))
                           (_recur18234_ __tmp18366)))
                        (__tmp18363
                         (let ((__tmp18364
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e18236_))))
                           (declare (not safe))
                           (_recur18234_ __tmp18364))))
                    (declare (not safe))
                    (cons __tmp18365 __tmp18363))
                  (if (let () (declare (not safe)) (vector? _e18236_))
                      (vector-map _recur18234_ _e18236_)
                      (if (let () (declare (not safe)) (box? _e18236_))
                          (let ((__tmp18361
                                 (let ((__tmp18362 (unbox _e18236_)))
                                   (declare (not safe))
                                   (_recur18234_ __tmp18362))))
                            (declare (not safe))
                            (box __tmp18361))
                          _e18236_)))))))
    (define __compile-top-source
      (lambda (_stx18230_)
        (let ((__tmp18370
               (let () (declare (not safe)) (__compile-top _stx18230_))))
          (declare (not safe))
          (cons '__noexpand: __tmp18370))))
    (define __compile-top
      (lambda (_stx18228_)
        (let ((__tmp18371 (gx#core-compile-top-syntax _stx18228_)))
          (declare (not safe))
          (__compile __tmp18371))))
    (define __eval-import
      (lambda (_in18209_)
        (letrec* ((_mods18211_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import118212_
                   (lambda (_in18219_ _phi18220_)
                     (if (gx#module-import? _in18219_)
                         (let ((_iphi18222_
                                (fx+ _phi18220_
                                     (gx#module-import-phi _in18219_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi18222_))
                               (let ((__tmp18373
                                      (gx#module-export-context
                                       (gx#module-import-source _in18219_))))
                                 (declare (not safe))
                                 (_eval118213_ __tmp18373))
                               '#!void))
                         (if (gx#module-context? _in18219_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi18220_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval118213_ _in18219_))
                                 '#!void)
                             (if (gx#import-set? _in18219_)
                                 (let ((_iphi18224_
                                        (fx+ _phi18220_
                                             (gx#import-set-phi _in18219_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi18224_))
                                       (let ((__tmp18372
                                              (gx#import-set-source
                                               _in18219_)))
                                         (declare (not safe))
                                         (_eval118213_ __tmp18372))
                                       (if (fxpositive? _iphi18224_)
                                           (for-each
                                            (lambda (_in18226_)
                                              (let ()
                                                (declare (not safe))
                                                (_import118212_
                                                 _in18226_
                                                 _iphi18224_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in18219_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in18219_))))))
                  (_eval118213_
                   (lambda (_ctx18217_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods18211_ _ctx18217_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods18211_ _ctx18217_ '#t))
                           (__eval-module _ctx18217_))))))
          (if (let () (declare (not safe)) (pair? _in18209_))
              (for-each
               (lambda (_in18215_)
                 (let () (declare (not safe)) (_import118212_ _in18215_ '0)))
               _in18209_)
              (let () (declare (not safe)) (_import118212_ _in18209_ '0))))))
    (define __eval-module
      (lambda (_obj18202_)
        (let* ((_key18204_
                (if (gx#module-context? _obj18202_)
                    (gx#module-context-path _obj18202_)
                    _obj18202_))
               (_$e18206_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key18204_ '#f))))
          (if _$e18206_ (values _$e18206_) (gx#core-eval-module _obj18202_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules18137_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home18139_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir18141_ (path-expand '"lib" _home18139_))
                     (_userpath18143_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath18145_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir18141_ '()))
                          (let ((__tmp18374
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir18141_ '()))))
                            (declare (not safe))
                            (cons _userpath18143_ __tmp18374))))
                     (_loadpath18154_
                      (let ((_$e18147_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e18147_
                            ((lambda (_envvar18150_)
                               (append (let ((__tmp18376
                                              (lambda (_x18152_)
                                                (let ((__tmp18377
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x18152_))))
                                                  (declare (not safe))
                                                  (not __tmp18377))))
                                             (__tmp18375
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar18150_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp18376 __tmp18375))
                                       _loadpath18145_))
                             _$e18147_)
                            _loadpath18145_))))
                (current-module-library-path _loadpath18154_))
              (let* ((_registry-entry18159_
                      (lambda (_m18157_)
                        (let ()
                          (declare (not safe))
                          (cons _m18157_ 'builtin))))
                     (_module-registry18199_
                      (let _lp18161_ ((_rest18163_ _builtin-modules18137_)
                                      (_registry18164_ '()))
                        (let* ((_rest1816518173_ _rest18163_)
                               (_else1816718181_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry18164_))))
                               (_K1816918187_
                                (lambda (_rest18184_ _mod18185_)
                                  (let ((__tmp18378
                                         (let ((__tmp18382
                                                (let ((__tmp18383
                                                       (string-append
                                                        _mod18185_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry18159_
                                                   __tmp18383)))
                                               (__tmp18379
                                                (let ((__tmp18380
                                                       (let ((__tmp18381
                                                              (string-append
                                                               _mod18185_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry18159_
                                                          __tmp18381))))
                                                  (declare (not safe))
                                                  (cons __tmp18380
                                                        _registry18164_))))
                                           (declare (not safe))
                                           (cons __tmp18382 __tmp18379))))
                                    (declare (not safe))
                                    (_lp18161_ _rest18184_ __tmp18378)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1816518173_))
                              (let ((_hd1817018190_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1816518173_)))
                                    (_tl1817118192_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1816518173_))))
                                (let* ((_mod18195_ _hd1817018190_)
                                       (_rest18197_ _tl1817118192_))
                                  (declare (not safe))
                                  (_K1816918187_ _rest18197_ _mod18195_)))
                              (let ()
                                (declare (not safe))
                                (_else1816718181_)))))))
                (current-module-registry _module-registry18199_))
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
