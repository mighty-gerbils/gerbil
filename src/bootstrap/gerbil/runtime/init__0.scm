(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1705947034)
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
        (letrec* ((_+readtable+18329_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core18331_ (gx#import-module ':gerbil/core))
                 (_pre18333_ (gx#make-prelude-context _core18331_)))
            (gx#current-expander-module-prelude _pre18333_)
            (gx#core-bind-root-syntax! ':<core> _pre18333_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port18336_)
             (input-port-readtable-set! _port18336_ _+readtable+18329_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port18338_)
             (output-port-readtable-set!
              _port18338_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port18338_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline18326_) '#!void))
    (define load-scheme
      (lambda (_path18321_)
        (let ((__tmp18340
               (lambda ()
                 (let ((__tmp18341 (lambda _args18324_ '#f)))
                   (declare (not safe))
                   (##load _path18321_ __tmp18341 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp18340
           __loading-scheme-source
           _path18321_))))
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
      (lambda _paths18316_
        (apply add-library-load-path _paths18316_)
        (apply add-expander-load-path _paths18316_)))
    (define add-library-load-path
      (lambda _paths18305_
        (let* ((_current18307_ (current-module-library-path))
               (_paths18309_ (map path-expand _paths18305_))
               (_paths18313_
                (let ((__tmp18342
                       (lambda (_x18311_)
                         (let ((__tmp18343 (member _x18311_ _current18307_)))
                           (declare (not safe))
                           (not __tmp18343)))))
                  (declare (not safe))
                  (filter __tmp18342 _paths18309_))))
          (current-module-library-path (append _current18307_ _paths18313_)))))
    (define add-expander-load-path
      (lambda _paths18294_
        (let* ((_current18296_ (gx#current-expander-module-library-path))
               (_paths18298_ (map path-expand _paths18294_))
               (_paths18302_
                (let ((__tmp18344
                       (lambda (_x18300_)
                         (let ((__tmp18345 (member _x18300_ _current18296_)))
                           (declare (not safe))
                           (not __tmp18345)))))
                  (declare (not safe))
                  (filter __tmp18344 _paths18298_))))
          (gx#current-expander-module-library-path
           (append _current18296_ _paths18302_)))))
    (define cons-load-path
      (lambda _paths18292_
        (apply cons-library-load-path _paths18292_)
        (apply cons-expander-load-path _paths18292_)))
    (define cons-library-load-path
      (lambda _paths18287_
        (let ((_current18289_ (current-module-library-path))
              (_paths18290_ (map path-expand _paths18287_)))
          (current-module-library-path (append _paths18290_ _current18289_)))))
    (define cons-expander-load-path
      (lambda _paths18282_
        (let ((_current18284_ (gx#current-expander-module-library-path))
              (_paths18285_ (map path-expand _paths18282_)))
          (gx#current-expander-module-library-path
           (append _paths18285_ _current18284_)))))
    (define with-cons-load-path
      (lambda (_thunk18278_ . _paths18279_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk18278_
                        _paths18279_))
               _paths18279_)))
    (define with-cons-library-load-path
      (lambda (_thunk18271_ . _paths18272_)
        (let ((_current18274_ (current-module-library-path))
              (_paths18275_ (map path-expand _paths18272_)))
          (let ((__tmp18347 (lambda () (_thunk18271_)))
                (__tmp18346 (append _paths18275_ _current18274_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18347
             current-module-library-path
             __tmp18346)))))
    (define with-cons-expander-load-path
      (lambda (_thunk18264_ . _paths18265_)
        (let ((_current18267_ (gx#current-expander-module-library-path))
              (_paths18268_ (map path-expand _paths18265_)))
          (let ((__tmp18349 (lambda () (_thunk18264_)))
                (__tmp18348 (append _paths18268_ _current18267_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18349
             gx#current-expander-module-library-path
             __tmp18348)))))
    (define __expand-source
      (lambda (_src18250_)
        (letrec ((_expand18252_
                  (lambda (_src18262_)
                    (let ((__tmp18350
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src18262_)))))
                      (declare (not safe))
                      (__compile-top __tmp18350))))
                 (_no-expand18253_
                  (lambda (_src18258_)
                    (if (__loading-scheme-source)
                        _src18258_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src18258_))
                            (let ((_code18260_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src18258_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code18260_))
                                  (if (let ((__tmp18351
                                             (let ()
                                               (declare (not safe))
                                               (##car _code18260_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp18351))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code18260_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e18255_
                 (let () (declare (not safe)) (_no-expand18253_ _src18250_))))
            (if _$e18255_
                _$e18255_
                (let () (declare (not safe)) (_expand18252_ _src18250_)))))))
    (define __macro-descr
      (lambda (_src18236_ _def-syntax?18237_)
        (letrec ((_fail!18239_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src18236_))))
                 (_make-descr18240_
                  (lambda (_size18244_)
                    (let ((_expander18247_
                           (let ((__tmp18352
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src18236_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp18352
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander18247_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?18237_
                             _size18244_
                             _expander18247_
                             _src18236_))
                          (let () (declare (not safe)) (_fail!18239_)))))))
          (if _def-syntax?18237_
              (let () (declare (not safe)) (_make-descr18240_ '-1))
              (let ((_code18242_
                     (let () (declare (not safe)) (##source-code _src18236_))))
                (if (and (let () (declare (not safe)) (##pair? _code18242_))
                         (let ((__tmp18356
                                (let ((__tmp18357
                                       (let ((__tmp18358
                                              (let ()
                                                (declare (not safe))
                                                (##car _code18242_))))
                                         (declare (not safe))
                                         (##sourcify __tmp18358 _src18236_))))
                                  (declare (not safe))
                                  (##source-code __tmp18357))))
                           (declare (not safe))
                           (##memq __tmp18356 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src18236_ _src18236_ '-3))
                      (let ((__tmp18353
                             (let ((__tmp18354
                                    (let ((__tmp18355
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code18242_))))
                                      (declare (not safe))
                                      (##sourcify __tmp18355 _src18236_))))
                               (declare (not safe))
                               (##form-size __tmp18354))))
                        (declare (not safe))
                        (_make-descr18240_ __tmp18353)))
                    (let () (declare (not safe)) (_fail!18239_))))))))
    (define __source->syntax
      (lambda (_src18230_)
        (let _recur18232_ ((_e18234_ _src18230_))
          (if (let () (declare (not safe)) (##source? _e18234_))
              (let ((__tmp18366
                     (let ((__tmp18367
                            (let ()
                              (declare (not safe))
                              (##source-code _e18234_))))
                       (declare (not safe))
                       (_recur18232_ __tmp18367)))
                    (__tmp18365
                     (let () (declare (not safe)) (##source-locat _e18234_))))
                (declare (not safe))
                (##structure AST::t __tmp18366 __tmp18365))
              (if (let () (declare (not safe)) (pair? _e18234_))
                  (let ((__tmp18363
                         (let ((__tmp18364
                                (let ()
                                  (declare (not safe))
                                  (##car _e18234_))))
                           (declare (not safe))
                           (_recur18232_ __tmp18364)))
                        (__tmp18361
                         (let ((__tmp18362
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e18234_))))
                           (declare (not safe))
                           (_recur18232_ __tmp18362))))
                    (declare (not safe))
                    (cons __tmp18363 __tmp18361))
                  (if (let () (declare (not safe)) (vector? _e18234_))
                      (vector-map _recur18232_ _e18234_)
                      (if (let () (declare (not safe)) (box? _e18234_))
                          (let ((__tmp18359
                                 (let ((__tmp18360 (unbox _e18234_)))
                                   (declare (not safe))
                                   (_recur18232_ __tmp18360))))
                            (declare (not safe))
                            (box __tmp18359))
                          _e18234_)))))))
    (define __compile-top-source
      (lambda (_stx18228_)
        (let ((__tmp18368
               (let () (declare (not safe)) (__compile-top _stx18228_))))
          (declare (not safe))
          (cons '__noexpand: __tmp18368))))
    (define __compile-top
      (lambda (_stx18226_)
        (let ((__tmp18369 (gx#core-compile-top-syntax _stx18226_)))
          (declare (not safe))
          (__compile __tmp18369))))
    (define __eval-import
      (lambda (_in18207_)
        (letrec* ((_mods18209_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import118210_
                   (lambda (_in18217_ _phi18218_)
                     (if (gx#module-import? _in18217_)
                         (let ((_iphi18220_
                                (fx+ _phi18218_
                                     (gx#module-import-phi _in18217_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi18220_))
                               (let ((__tmp18371
                                      (gx#module-export-context
                                       (gx#module-import-source _in18217_))))
                                 (declare (not safe))
                                 (_eval118211_ __tmp18371))
                               '#!void))
                         (if (gx#module-context? _in18217_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi18218_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval118211_ _in18217_))
                                 '#!void)
                             (if (gx#import-set? _in18217_)
                                 (let ((_iphi18222_
                                        (fx+ _phi18218_
                                             (gx#import-set-phi _in18217_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi18222_))
                                       (let ((__tmp18370
                                              (gx#import-set-source
                                               _in18217_)))
                                         (declare (not safe))
                                         (_eval118211_ __tmp18370))
                                       (if (fxpositive? _iphi18222_)
                                           (for-each
                                            (lambda (_in18224_)
                                              (let ()
                                                (declare (not safe))
                                                (_import118210_
                                                 _in18224_
                                                 _iphi18222_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in18217_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in18217_))))))
                  (_eval118211_
                   (lambda (_ctx18215_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods18209_ _ctx18215_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods18209_ _ctx18215_ '#t))
                           (__eval-module _ctx18215_))))))
          (if (let () (declare (not safe)) (pair? _in18207_))
              (for-each
               (lambda (_in18213_)
                 (let () (declare (not safe)) (_import118210_ _in18213_ '0)))
               _in18207_)
              (let () (declare (not safe)) (_import118210_ _in18207_ '0))))))
    (define __eval-module
      (lambda (_obj18200_)
        (let* ((_key18202_
                (if (gx#module-context? _obj18200_)
                    (gx#module-context-path _obj18200_)
                    _obj18200_))
               (_$e18204_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key18202_ '#f))))
          (if _$e18204_ (values _$e18204_) (gx#core-eval-module _obj18200_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules18135_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home18137_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir18139_ (path-expand '"lib" _home18137_))
                     (_userpath18141_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath18143_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir18139_ '()))
                          (let ((__tmp18372
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir18139_ '()))))
                            (declare (not safe))
                            (cons _userpath18141_ __tmp18372))))
                     (_loadpath18152_
                      (let ((_$e18145_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e18145_
                            ((lambda (_envvar18148_)
                               (append (let ((__tmp18374
                                              (lambda (_x18150_)
                                                (let ((__tmp18375
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x18150_))))
                                                  (declare (not safe))
                                                  (not __tmp18375))))
                                             (__tmp18373
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar18148_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp18374 __tmp18373))
                                       _loadpath18143_))
                             _$e18145_)
                            _loadpath18143_))))
                (current-module-library-path _loadpath18152_))
              (let* ((_registry-entry18157_
                      (lambda (_m18155_)
                        (let ()
                          (declare (not safe))
                          (cons _m18155_ 'builtin))))
                     (_module-registry18197_
                      (let _lp18159_ ((_rest18161_ _builtin-modules18135_)
                                      (_registry18162_ '()))
                        (let* ((_rest1816318171_ _rest18161_)
                               (_else1816518179_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry18162_))))
                               (_K1816718185_
                                (lambda (_rest18182_ _mod18183_)
                                  (let ((__tmp18376
                                         (let ((__tmp18380
                                                (let ((__tmp18381
                                                       (string-append
                                                        _mod18183_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry18157_
                                                   __tmp18381)))
                                               (__tmp18377
                                                (let ((__tmp18378
                                                       (let ((__tmp18379
                                                              (string-append
                                                               _mod18183_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry18157_
                                                          __tmp18379))))
                                                  (declare (not safe))
                                                  (cons __tmp18378
                                                        _registry18162_))))
                                           (declare (not safe))
                                           (cons __tmp18380 __tmp18377))))
                                    (declare (not safe))
                                    (_lp18159_ _rest18182_ __tmp18376)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1816318171_))
                              (let ((_hd1816818188_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1816318171_)))
                                    (_tl1816918190_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1816318171_))))
                                (let* ((_mod18193_ _hd1816818188_)
                                       (_rest18195_ _tl1816918190_))
                                  (declare (not safe))
                                  (_K1816718185_ _rest18195_ _mod18193_)))
                              (let ()
                                (declare (not safe))
                                (_else1816518179_)))))))
                (current-module-registry _module-registry18197_))
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
