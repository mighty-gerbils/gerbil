(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1696542233)
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
        (letrec* ((_+readtable+18374_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core18376_ (gx#import-module ':gerbil/core))
                 (_pre18378_ (gx#make-prelude-context _core18376_)))
            (gx#current-expander-module-prelude _pre18378_)
            (gx#core-bind-root-syntax! ':<core> _pre18378_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port18381_)
             (input-port-readtable-set! _port18381_ _+readtable+18374_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port18383_)
             (output-port-readtable-set!
              _port18383_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port18383_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline18371_) '#!void))
    (define load-scheme
      (lambda (_path18366_)
        (let ((__tmp18385
               (lambda ()
                 (let ((__tmp18386 (lambda _args18369_ '#f)))
                   (declare (not safe))
                   (##load _path18366_ __tmp18386 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp18385
           __loading-scheme-source
           _path18366_))))
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
      (lambda _paths18361_
        (apply add-library-load-path _paths18361_)
        (apply add-expander-load-path _paths18361_)))
    (define add-library-load-path
      (lambda _paths18350_
        (let* ((_current18352_ (current-module-library-path))
               (_paths18354_ (map path-expand _paths18350_))
               (_paths18358_
                (let ((__tmp18387
                       (lambda (_x18356_)
                         (let ((__tmp18388 (member _x18356_ _current18352_)))
                           (declare (not safe))
                           (not __tmp18388)))))
                  (declare (not safe))
                  (filter __tmp18387 _paths18354_))))
          (current-module-library-path (append _current18352_ _paths18358_)))))
    (define add-expander-load-path
      (lambda _paths18339_
        (let* ((_current18341_ (gx#current-expander-module-library-path))
               (_paths18343_ (map path-expand _paths18339_))
               (_paths18347_
                (let ((__tmp18389
                       (lambda (_x18345_)
                         (let ((__tmp18390 (member _x18345_ _current18341_)))
                           (declare (not safe))
                           (not __tmp18390)))))
                  (declare (not safe))
                  (filter __tmp18389 _paths18343_))))
          (gx#current-expander-module-library-path
           (append _current18341_ _paths18347_)))))
    (define cons-load-path
      (lambda _paths18337_
        (apply cons-library-load-path _paths18337_)
        (apply cons-expander-load-path _paths18337_)))
    (define cons-library-load-path
      (lambda _paths18332_
        (let ((_current18334_ (current-module-library-path))
              (_paths18335_ (map path-expand _paths18332_)))
          (current-module-library-path (append _paths18335_ _current18334_)))))
    (define cons-expander-load-path
      (lambda _paths18327_
        (let ((_current18329_ (gx#current-expander-module-library-path))
              (_paths18330_ (map path-expand _paths18327_)))
          (gx#current-expander-module-library-path
           (append _paths18330_ _current18329_)))))
    (define with-cons-load-path
      (lambda (_thunk18323_ . _paths18324_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk18323_
                        _paths18324_))
               _paths18324_)))
    (define with-cons-library-load-path
      (lambda (_thunk18316_ . _paths18317_)
        (let ((_current18319_ (current-module-library-path))
              (_paths18320_ (map path-expand _paths18317_)))
          (let ((__tmp18392 (lambda () (_thunk18316_)))
                (__tmp18391 (append _paths18320_ _current18319_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18392
             current-module-library-path
             __tmp18391)))))
    (define with-cons-expander-load-path
      (lambda (_thunk18309_ . _paths18310_)
        (let ((_current18312_ (gx#current-expander-module-library-path))
              (_paths18313_ (map path-expand _paths18310_)))
          (let ((__tmp18394 (lambda () (_thunk18309_)))
                (__tmp18393 (append _paths18313_ _current18312_)))
            (declare (not safe))
            (call-with-parameters
             __tmp18394
             gx#current-expander-module-library-path
             __tmp18393)))))
    (define __expand-source
      (lambda (_src18295_)
        (letrec ((_expand18297_
                  (lambda (_src18307_)
                    (let ((__tmp18395
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src18307_)))))
                      (declare (not safe))
                      (__compile-top __tmp18395))))
                 (_no-expand18298_
                  (lambda (_src18303_)
                    (if (__loading-scheme-source)
                        _src18303_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src18303_))
                            (let ((_code18305_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src18303_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code18305_))
                                  (if (let ((__tmp18396
                                             (let ()
                                               (declare (not safe))
                                               (##car _code18305_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp18396))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code18305_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e18300_
                 (let () (declare (not safe)) (_no-expand18298_ _src18295_))))
            (if _$e18300_
                _$e18300_
                (let () (declare (not safe)) (_expand18297_ _src18295_)))))))
    (define __macro-descr
      (lambda (_src18281_ _def-syntax?18282_)
        (letrec ((_fail!18284_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src18281_))))
                 (_make-descr18285_
                  (lambda (_size18289_)
                    (let ((_expander18292_
                           (let ((__tmp18397
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src18281_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp18397
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander18292_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?18282_
                             _size18289_
                             _expander18292_
                             _src18281_))
                          (let () (declare (not safe)) (_fail!18284_)))))))
          (if _def-syntax?18282_
              (let () (declare (not safe)) (_make-descr18285_ '-1))
              (let ((_code18287_
                     (let () (declare (not safe)) (##source-code _src18281_))))
                (if (and (let () (declare (not safe)) (##pair? _code18287_))
                         (let ((__tmp18401
                                (let ((__tmp18402
                                       (let ((__tmp18403
                                              (let ()
                                                (declare (not safe))
                                                (##car _code18287_))))
                                         (declare (not safe))
                                         (##sourcify __tmp18403 _src18281_))))
                                  (declare (not safe))
                                  (##source-code __tmp18402))))
                           (declare (not safe))
                           (##memq __tmp18401 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src18281_ _src18281_ '-3))
                      (let ((__tmp18398
                             (let ((__tmp18399
                                    (let ((__tmp18400
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code18287_))))
                                      (declare (not safe))
                                      (##sourcify __tmp18400 _src18281_))))
                               (declare (not safe))
                               (##form-size __tmp18399))))
                        (declare (not safe))
                        (_make-descr18285_ __tmp18398)))
                    (let () (declare (not safe)) (_fail!18284_))))))))
    (define __source->syntax
      (lambda (_src18275_)
        (let _recur18277_ ((_e18279_ _src18275_))
          (if (let () (declare (not safe)) (##source? _e18279_))
              (let ((__tmp18411
                     (let ((__tmp18412
                            (let ()
                              (declare (not safe))
                              (##source-code _e18279_))))
                       (declare (not safe))
                       (_recur18277_ __tmp18412)))
                    (__tmp18410
                     (let () (declare (not safe)) (##source-locat _e18279_))))
                (declare (not safe))
                (##structure AST::t __tmp18411 __tmp18410))
              (if (let () (declare (not safe)) (pair? _e18279_))
                  (let ((__tmp18408
                         (let ((__tmp18409
                                (let ()
                                  (declare (not safe))
                                  (##car _e18279_))))
                           (declare (not safe))
                           (_recur18277_ __tmp18409)))
                        (__tmp18406
                         (let ((__tmp18407
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e18279_))))
                           (declare (not safe))
                           (_recur18277_ __tmp18407))))
                    (declare (not safe))
                    (cons __tmp18408 __tmp18406))
                  (if (let () (declare (not safe)) (vector? _e18279_))
                      (vector-map _recur18277_ _e18279_)
                      (if (let () (declare (not safe)) (box? _e18279_))
                          (let ((__tmp18404
                                 (let ((__tmp18405 (unbox _e18279_)))
                                   (declare (not safe))
                                   (_recur18277_ __tmp18405))))
                            (declare (not safe))
                            (box __tmp18404))
                          _e18279_)))))))
    (define __compile-top-source
      (lambda (_stx18273_)
        (let ((__tmp18413
               (let () (declare (not safe)) (__compile-top _stx18273_))))
          (declare (not safe))
          (cons '__noexpand: __tmp18413))))
    (define __compile-top
      (lambda (_stx18271_)
        (let ((__tmp18414 (gx#core-compile-top-syntax _stx18271_)))
          (declare (not safe))
          (__compile __tmp18414))))
    (define __eval-import
      (lambda (_in18252_)
        (letrec* ((_mods18254_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import118255_
                   (lambda (_in18262_ _phi18263_)
                     (if (gx#module-import? _in18262_)
                         (let ((_iphi18265_
                                (fx+ _phi18263_
                                     (gx#module-import-phi _in18262_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi18265_))
                               (let ((__tmp18416
                                      (gx#module-export-context
                                       (gx#module-import-source _in18262_))))
                                 (declare (not safe))
                                 (_eval118256_ __tmp18416))
                               '#!void))
                         (if (gx#module-context? _in18262_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi18263_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval118256_ _in18262_))
                                 '#!void)
                             (if (gx#import-set? _in18262_)
                                 (let ((_iphi18267_
                                        (fx+ _phi18263_
                                             (gx#import-set-phi _in18262_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi18267_))
                                       (let ((__tmp18415
                                              (gx#import-set-source
                                               _in18262_)))
                                         (declare (not safe))
                                         (_eval118256_ __tmp18415))
                                       (if (fxpositive? _iphi18267_)
                                           (for-each
                                            (lambda (_in18269_)
                                              (let ()
                                                (declare (not safe))
                                                (_import118255_
                                                 _in18269_
                                                 _iphi18267_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in18262_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in18262_))))))
                  (_eval118256_
                   (lambda (_ctx18260_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods18254_ _ctx18260_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods18254_ _ctx18260_ '#t))
                           (__eval-module _ctx18260_))))))
          (if (let () (declare (not safe)) (pair? _in18252_))
              (for-each
               (lambda (_in18258_)
                 (let () (declare (not safe)) (_import118255_ _in18258_ '0)))
               _in18252_)
              (let () (declare (not safe)) (_import118255_ _in18252_ '0))))))
    (define __eval-module
      (lambda (_obj18245_)
        (let* ((_key18247_
                (if (gx#module-context? _obj18245_)
                    (gx#module-context-path _obj18245_)
                    _obj18245_))
               (_$e18249_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key18247_ '#f))))
          (if _$e18249_ (values _$e18249_) (gx#core-eval-module _obj18245_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules18180_)
        (let* ((_home18182_ (let () (declare (not safe)) (gerbil-home)))
               (_libdir18184_ (path-expand '"lib" _home18182_))
               (_loadpath18193_
                (let ((_$e18186_ (getenv '"GERBIL_LOADPATH" '#f)))
                  (if _$e18186_
                      ((lambda (_envvar18189_)
                         (let ((__tmp18418
                                (lambda (_x18191_)
                                  (let ((__tmp18419
                                         (let ()
                                           (declare (not safe))
                                           (string-empty? _x18191_))))
                                    (declare (not safe))
                                    (not __tmp18419))))
                               (__tmp18417
                                (let ()
                                  (declare (not safe))
                                  (string-split _envvar18189_ '#\:))))
                           (declare (not safe))
                           (filter __tmp18418 __tmp18417)))
                       _$e18186_)
                      '())))
               (_userpath18195_
                (path-expand
                 '"lib"
                 (let () (declare (not safe)) (gerbil-path))))
               (_loadpath18197_
                (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                    _loadpath18193_
                    (let ()
                      (declare (not safe))
                      (cons _userpath18195_ _loadpath18193_)))))
          (current-module-library-path
           (let () (declare (not safe)) (cons _libdir18184_ _loadpath18197_))))
        (let* ((_registry-entry18202_
                (lambda (_m18200_)
                  (let () (declare (not safe)) (cons _m18200_ 'builtin))))
               (_module-registry18242_
                (let _lp18204_ ((_rest18206_ _builtin-modules18180_)
                                (_registry18207_ '()))
                  (let* ((_rest1820818216_ _rest18206_)
                         (_else1821018224_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (list->table _registry18207_))))
                         (_K1821218230_
                          (lambda (_rest18227_ _mod18228_)
                            (let ((__tmp18420
                                   (let ((__tmp18424
                                          (let ((__tmp18425
                                                 (string-append
                                                  _mod18228_
                                                  '"__0")))
                                            (declare (not safe))
                                            (_registry-entry18202_
                                             __tmp18425)))
                                         (__tmp18421
                                          (let ((__tmp18422
                                                 (let ((__tmp18423
                                                        (string-append
                                                         _mod18228_
                                                         '"__rt")))
                                                   (declare (not safe))
                                                   (_registry-entry18202_
                                                    __tmp18423))))
                                            (declare (not safe))
                                            (cons __tmp18422
                                                  _registry18207_))))
                                     (declare (not safe))
                                     (cons __tmp18424 __tmp18421))))
                              (declare (not safe))
                              (_lp18204_ _rest18227_ __tmp18420)))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest1820818216_))
                        (let ((_hd1821318233_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest1820818216_)))
                              (_tl1821418235_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest1820818216_))))
                          (let* ((_mod18238_ _hd1821318233_)
                                 (_rest18240_ _tl1821418235_))
                            (declare (not safe))
                            (_K1821218230_ _rest18240_ _mod18238_)))
                        (let () (declare (not safe)) (_else1821018224_)))))))
          (current-module-registry _module-registry18242_))
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
