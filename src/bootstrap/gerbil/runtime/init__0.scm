(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1706581965)
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
        (letrec* ((_+readtable+18327_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core18329_ (gx#import-module ':gerbil/core))
                 (_pre18331_ (gx#make-prelude-context _core18329_)))
            (gx#current-expander-module-prelude _pre18331_)
            (gx#core-bind-root-syntax! ':<core> _pre18331_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port18334_)
             (input-port-readtable-set! _port18334_ _+readtable+18327_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port18336_)
             (output-port-readtable-set!
              _port18336_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port18336_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline18324_) '#!void))
    (define load-scheme
      (lambda (_path18319_)
        (let ((__tmp18338
               (lambda ()
                 (let ((__tmp18339 (lambda _args18322_ '#f)))
                   (declare (not safe))
                   (##load _path18319_ __tmp18339 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp18338
           __loading-scheme-source
           _path18319_))))
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
      (lambda _paths18314_
        (apply add-library-load-path _paths18314_)
        (apply add-expander-load-path _paths18314_)))
    (define add-library-load-path
      (lambda _paths18303_
        (let* ((_current18305_ (current-module-library-path))
               (_paths18307_ (map path-expand _paths18303_))
               (_paths18311_
                (let ((__tmp18340
                       (lambda (_x18309_)
                         (let ((__tmp18341 (member _x18309_ _current18305_)))
                           (declare (not safe))
                           (not __tmp18341)))))
                  (declare (not safe))
                  (filter __tmp18340 _paths18307_))))
          (current-module-library-path (append _current18305_ _paths18311_)))))
    (define add-expander-load-path
      (lambda _paths18292_
        (let* ((_current18294_ (gx#current-expander-module-library-path))
               (_paths18296_ (map path-expand _paths18292_))
               (_paths18300_
                (let ((__tmp18342
                       (lambda (_x18298_)
                         (let ((__tmp18343 (member _x18298_ _current18294_)))
                           (declare (not safe))
                           (not __tmp18343)))))
                  (declare (not safe))
                  (filter __tmp18342 _paths18296_))))
          (gx#current-expander-module-library-path
           (append _current18294_ _paths18300_)))))
    (define cons-load-path
      (lambda _paths18290_
        (apply cons-library-load-path _paths18290_)
        (apply cons-expander-load-path _paths18290_)))
    (define cons-library-load-path
      (lambda _paths18285_
        (let ((_current18287_ (current-module-library-path))
              (_paths18288_ (map path-expand _paths18285_)))
          (current-module-library-path (append _paths18288_ _current18287_)))))
    (define cons-expander-load-path
      (lambda _paths18280_
        (let ((_current18282_ (gx#current-expander-module-library-path))
              (_paths18283_ (map path-expand _paths18280_)))
          (gx#current-expander-module-library-path
           (append _paths18283_ _current18282_)))))
    (define with-cons-load-path
      (lambda (_thunk18276_ . _paths18277_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk18276_
                        _paths18277_))
               _paths18277_)))
    (define with-cons-library-load-path
      (lambda (_thunk18269_ . _paths18270_)
        (let ((_current18272_ (current-module-library-path))
              (_paths18273_ (map path-expand _paths18270_)))
          (let ((__tmp18345 (lambda () (_thunk18269_)))
                (__tmp18344 (append _paths18273_ _current18272_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18345
             current-module-library-path
             __tmp18344)))))
    (define with-cons-expander-load-path
      (lambda (_thunk18262_ . _paths18263_)
        (let ((_current18265_ (gx#current-expander-module-library-path))
              (_paths18266_ (map path-expand _paths18263_)))
          (let ((__tmp18347 (lambda () (_thunk18262_)))
                (__tmp18346 (append _paths18266_ _current18265_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18347
             gx#current-expander-module-library-path
             __tmp18346)))))
    (define __expand-source
      (lambda (_src18248_)
        (letrec ((_expand18250_
                  (lambda (_src18260_)
                    (let ((__tmp18348
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src18260_)))))
                      (declare (not safe))
                      (__compile-top __tmp18348))))
                 (_no-expand18251_
                  (lambda (_src18256_)
                    (if (__loading-scheme-source)
                        _src18256_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src18256_))
                            (let ((_code18258_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src18256_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code18258_))
                                  (if (let ((__tmp18349
                                             (let ()
                                               (declare (not safe))
                                               (##car _code18258_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp18349))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code18258_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e18253_
                 (let () (declare (not safe)) (_no-expand18251_ _src18248_))))
            (if _$e18253_
                _$e18253_
                (let () (declare (not safe)) (_expand18250_ _src18248_)))))))
    (define __macro-descr
      (lambda (_src18234_ _def-syntax?18235_)
        (letrec ((_fail!18237_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src18234_))))
                 (_make-descr18238_
                  (lambda (_size18242_)
                    (let ((_expander18245_
                           (let ((__tmp18350
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src18234_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp18350
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander18245_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?18235_
                             _size18242_
                             _expander18245_
                             _src18234_))
                          (let () (declare (not safe)) (_fail!18237_)))))))
          (if _def-syntax?18235_
              (let () (declare (not safe)) (_make-descr18238_ '-1))
              (let ((_code18240_
                     (let () (declare (not safe)) (##source-code _src18234_))))
                (if (and (let () (declare (not safe)) (##pair? _code18240_))
                         (let ((__tmp18354
                                (let ((__tmp18355
                                       (let ((__tmp18356
                                              (let ()
                                                (declare (not safe))
                                                (##car _code18240_))))
                                         (declare (not safe))
                                         (##sourcify __tmp18356 _src18234_))))
                                  (declare (not safe))
                                  (##source-code __tmp18355))))
                           (declare (not safe))
                           (##memq __tmp18354 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src18234_ _src18234_ '-3))
                      (let ((__tmp18351
                             (let ((__tmp18352
                                    (let ((__tmp18353
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code18240_))))
                                      (declare (not safe))
                                      (##sourcify __tmp18353 _src18234_))))
                               (declare (not safe))
                               (##form-size __tmp18352))))
                        (declare (not safe))
                        (_make-descr18238_ __tmp18351)))
                    (let () (declare (not safe)) (_fail!18237_))))))))
    (define __source->syntax
      (lambda (_src18228_)
        (let _recur18230_ ((_e18232_ _src18228_))
          (if (let () (declare (not safe)) (##source? _e18232_))
              (let ((__tmp18364
                     (let ((__tmp18365
                            (let ()
                              (declare (not safe))
                              (##source-code _e18232_))))
                       (declare (not safe))
                       (_recur18230_ __tmp18365)))
                    (__tmp18363
                     (let () (declare (not safe)) (##source-locat _e18232_))))
                (declare (not safe))
                (##structure AST::t __tmp18364 __tmp18363))
              (if (let () (declare (not safe)) (pair? _e18232_))
                  (let ((__tmp18361
                         (let ((__tmp18362
                                (let ()
                                  (declare (not safe))
                                  (##car _e18232_))))
                           (declare (not safe))
                           (_recur18230_ __tmp18362)))
                        (__tmp18359
                         (let ((__tmp18360
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e18232_))))
                           (declare (not safe))
                           (_recur18230_ __tmp18360))))
                    (declare (not safe))
                    (cons __tmp18361 __tmp18359))
                  (if (let () (declare (not safe)) (vector? _e18232_))
                      (vector-map _recur18230_ _e18232_)
                      (if (let () (declare (not safe)) (box? _e18232_))
                          (let ((__tmp18357
                                 (let ((__tmp18358 (unbox _e18232_)))
                                   (declare (not safe))
                                   (_recur18230_ __tmp18358))))
                            (declare (not safe))
                            (box __tmp18357))
                          _e18232_)))))))
    (define __compile-top-source
      (lambda (_stx18226_)
        (let ((__tmp18366
               (let () (declare (not safe)) (__compile-top _stx18226_))))
          (declare (not safe))
          (cons '__noexpand: __tmp18366))))
    (define __compile-top
      (lambda (_stx18224_)
        (let ((__tmp18367 (gx#core-compile-top-syntax _stx18224_)))
          (declare (not safe))
          (__compile __tmp18367))))
    (define __eval-import
      (lambda (_in18205_)
        (letrec* ((_mods18207_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import118208_
                   (lambda (_in18215_ _phi18216_)
                     (if (gx#module-import? _in18215_)
                         (let ((_iphi18218_
                                (fx+ _phi18216_
                                     (gx#module-import-phi _in18215_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi18218_))
                               (let ((__tmp18369
                                      (gx#module-export-context
                                       (gx#module-import-source _in18215_))))
                                 (declare (not safe))
                                 (_eval118209_ __tmp18369))
                               '#!void))
                         (if (gx#module-context? _in18215_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi18216_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval118209_ _in18215_))
                                 '#!void)
                             (if (gx#import-set? _in18215_)
                                 (let ((_iphi18220_
                                        (fx+ _phi18216_
                                             (gx#import-set-phi _in18215_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi18220_))
                                       (let ((__tmp18368
                                              (gx#import-set-source
                                               _in18215_)))
                                         (declare (not safe))
                                         (_eval118209_ __tmp18368))
                                       (if (fxpositive? _iphi18220_)
                                           (for-each
                                            (lambda (_in18222_)
                                              (let ()
                                                (declare (not safe))
                                                (_import118208_
                                                 _in18222_
                                                 _iphi18220_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in18215_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in18215_))))))
                  (_eval118209_
                   (lambda (_ctx18213_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods18207_ _ctx18213_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods18207_ _ctx18213_ '#t))
                           (__eval-module _ctx18213_))))))
          (if (let () (declare (not safe)) (pair? _in18205_))
              (for-each
               (lambda (_in18211_)
                 (let () (declare (not safe)) (_import118208_ _in18211_ '0)))
               _in18205_)
              (let () (declare (not safe)) (_import118208_ _in18205_ '0))))))
    (define __eval-module
      (lambda (_obj18198_)
        (let* ((_key18200_
                (if (gx#module-context? _obj18198_)
                    (gx#module-context-path _obj18198_)
                    _obj18198_))
               (_$e18202_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key18200_ '#f))))
          (if _$e18202_ (values _$e18202_) (gx#core-eval-module _obj18198_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules18133_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home18135_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir18137_ (path-expand '"lib" _home18135_))
                     (_userpath18139_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath18141_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir18137_ '()))
                          (let ((__tmp18370
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir18137_ '()))))
                            (declare (not safe))
                            (cons _userpath18139_ __tmp18370))))
                     (_loadpath18150_
                      (let ((_$e18143_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e18143_
                            ((lambda (_envvar18146_)
                               (append (let ((__tmp18372
                                              (lambda (_x18148_)
                                                (let ((__tmp18373
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x18148_))))
                                                  (declare (not safe))
                                                  (not __tmp18373))))
                                             (__tmp18371
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar18146_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp18372 __tmp18371))
                                       _loadpath18141_))
                             _$e18143_)
                            _loadpath18141_))))
                (current-module-library-path _loadpath18150_))
              (let* ((_registry-entry18155_
                      (lambda (_m18153_)
                        (let ()
                          (declare (not safe))
                          (cons _m18153_ 'builtin))))
                     (_module-registry18195_
                      (let _lp18157_ ((_rest18159_ _builtin-modules18133_)
                                      (_registry18160_ '()))
                        (let* ((_rest1816118169_ _rest18159_)
                               (_else1816318177_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry18160_))))
                               (_K1816518183_
                                (lambda (_rest18180_ _mod18181_)
                                  (let ((__tmp18374
                                         (let ((__tmp18378
                                                (let ((__tmp18379
                                                       (string-append
                                                        _mod18181_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry18155_
                                                   __tmp18379)))
                                               (__tmp18375
                                                (let ((__tmp18376
                                                       (let ((__tmp18377
                                                              (string-append
                                                               _mod18181_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry18155_
                                                          __tmp18377))))
                                                  (declare (not safe))
                                                  (cons __tmp18376
                                                        _registry18160_))))
                                           (declare (not safe))
                                           (cons __tmp18378 __tmp18375))))
                                    (declare (not safe))
                                    (_lp18157_ _rest18180_ __tmp18374)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1816118169_))
                              (let ((_hd1816618186_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1816118169_)))
                                    (_tl1816718188_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1816118169_))))
                                (let* ((_mod18191_ _hd1816618186_)
                                       (_rest18193_ _tl1816718188_))
                                  (declare (not safe))
                                  (_K1816518183_ _rest18193_ _mod18191_)))
                              (let ()
                                (declare (not safe))
                                (_else1816318177_)))))))
                (current-module-registry _module-registry18195_))
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
