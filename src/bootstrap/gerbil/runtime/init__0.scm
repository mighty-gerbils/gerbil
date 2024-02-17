(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708194421)
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
        (letrec* ((_+readtable+121433_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core121435_ (gx#import-module ':gerbil/core))
                 (_pre121437_ (gx#make-prelude-context _core121435_)))
            (gx#current-expander-module-prelude _pre121437_)
            (gx#core-bind-root-syntax! ':<core> _pre121437_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port121440_)
             (input-port-readtable-set! _port121440_ _+readtable+121433_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port121442_)
             (output-port-readtable-set!
              _port121442_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port121442_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline121430_) '#!void))
    (define load-scheme
      (lambda (_path121425_)
        (let ((__tmp125511
               (lambda ()
                 (let ((__tmp125512 (lambda _args121428_ '#f)))
                   (declare (not safe))
                   (##load _path121425_ __tmp125512 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp125511
           __loading-scheme-source
           _path121425_))))
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
      (lambda _paths121420_
        (apply add-library-load-path _paths121420_)
        (apply add-expander-load-path _paths121420_)))
    (define add-library-load-path
      (lambda _paths121409_
        (let* ((_current121411_ (current-module-library-path))
               (_paths121413_ (map path-expand _paths121409_))
               (_paths121417_
                (let ((__tmp125513
                       (lambda (_x121415_)
                         (let ((__tmp125514
                                (member _x121415_ _current121411_)))
                           (declare (not safe))
                           (not __tmp125514)))))
                  (declare (not safe))
                  (filter __tmp125513 _paths121413_))))
          (current-module-library-path
           (append _current121411_ _paths121417_)))))
    (define add-expander-load-path
      (lambda _paths121398_
        (let* ((_current121400_ (gx#current-expander-module-library-path))
               (_paths121402_ (map path-expand _paths121398_))
               (_paths121406_
                (let ((__tmp125515
                       (lambda (_x121404_)
                         (let ((__tmp125516
                                (member _x121404_ _current121400_)))
                           (declare (not safe))
                           (not __tmp125516)))))
                  (declare (not safe))
                  (filter __tmp125515 _paths121402_))))
          (gx#current-expander-module-library-path
           (append _current121400_ _paths121406_)))))
    (define cons-load-path
      (lambda _paths121396_
        (apply cons-library-load-path _paths121396_)
        (apply cons-expander-load-path _paths121396_)))
    (define cons-library-load-path
      (lambda _paths121391_
        (let ((_current121393_ (current-module-library-path))
              (_paths121394_ (map path-expand _paths121391_)))
          (current-module-library-path
           (append _paths121394_ _current121393_)))))
    (define cons-expander-load-path
      (lambda _paths121386_
        (let ((_current121388_ (gx#current-expander-module-library-path))
              (_paths121389_ (map path-expand _paths121386_)))
          (gx#current-expander-module-library-path
           (append _paths121389_ _current121388_)))))
    (define with-cons-load-path
      (lambda (_thunk121382_ . _paths121383_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk121382_
                        _paths121383_))
               _paths121383_)))
    (define with-cons-library-load-path
      (lambda (_thunk121375_ . _paths121376_)
        (let ((_current121378_ (current-module-library-path))
              (_paths121379_ (map path-expand _paths121376_)))
          (let ((__tmp125518 (lambda () (_thunk121375_)))
                (__tmp125517 (append _paths121379_ _current121378_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125518
             current-module-library-path
             __tmp125517)))))
    (define with-cons-expander-load-path
      (lambda (_thunk121368_ . _paths121369_)
        (let ((_current121371_ (gx#current-expander-module-library-path))
              (_paths121372_ (map path-expand _paths121369_)))
          (let ((__tmp125520 (lambda () (_thunk121368_)))
                (__tmp125519 (append _paths121372_ _current121371_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125520
             gx#current-expander-module-library-path
             __tmp125519)))))
    (define __expand-source
      (lambda (_src121354_)
        (letrec ((_expand121356_
                  (lambda (_src121366_)
                    (let ((__tmp125521
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src121366_)))))
                      (declare (not safe))
                      (__compile-top __tmp125521))))
                 (_no-expand121357_
                  (lambda (_src121362_)
                    (if (__loading-scheme-source)
                        _src121362_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src121362_))
                            (let ((_code121364_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src121362_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code121364_))
                                  (if (let ((__tmp125522
                                             (let ()
                                               (declare (not safe))
                                               (##car _code121364_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp125522))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code121364_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e121359_
                 (let ()
                   (declare (not safe))
                   (_no-expand121357_ _src121354_))))
            (if _$e121359_
                _$e121359_
                (let () (declare (not safe)) (_expand121356_ _src121354_)))))))
    (define __macro-descr
      (lambda (_src121340_ _def-syntax?121341_)
        (letrec ((_fail!121343_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src121340_))))
                 (_make-descr121344_
                  (lambda (_size121348_)
                    (let ((_expander121351_
                           (let ((__tmp125523
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src121340_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp125523
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander121351_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?121341_
                             _size121348_
                             _expander121351_
                             _src121340_))
                          (let () (declare (not safe)) (_fail!121343_)))))))
          (if _def-syntax?121341_
              (let () (declare (not safe)) (_make-descr121344_ '-1))
              (let ((_code121346_
                     (let ()
                       (declare (not safe))
                       (##source-code _src121340_))))
                (if (and (let () (declare (not safe)) (##pair? _code121346_))
                         (let ((__tmp125524
                                (let ((__tmp125525
                                       (let ((__tmp125526
                                              (let ()
                                                (declare (not safe))
                                                (##car _code121346_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp125526
                                          _src121340_))))
                                  (declare (not safe))
                                  (##source-code __tmp125525))))
                           (declare (not safe))
                           (##memq __tmp125524 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src121340_ _src121340_ '-3))
                      (let ((__tmp125527
                             (let ((__tmp125528
                                    (let ((__tmp125529
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code121346_))))
                                      (declare (not safe))
                                      (##sourcify __tmp125529 _src121340_))))
                               (declare (not safe))
                               (##form-size __tmp125528))))
                        (declare (not safe))
                        (_make-descr121344_ __tmp125527)))
                    (let () (declare (not safe)) (_fail!121343_))))))))
    (define __source->syntax
      (lambda (_src121334_)
        (let _recur121336_ ((_e121338_ _src121334_))
          (if (let () (declare (not safe)) (##source? _e121338_))
              (let ((__tmp125531
                     (let ((__tmp125532
                            (let ()
                              (declare (not safe))
                              (##source-code _e121338_))))
                       (declare (not safe))
                       (_recur121336_ __tmp125532)))
                    (__tmp125530
                     (let () (declare (not safe)) (##source-locat _e121338_))))
                (declare (not safe))
                (##structure AST::t __tmp125531 __tmp125530))
              (if (let () (declare (not safe)) (pair? _e121338_))
                  (let ((__tmp125535
                         (let ((__tmp125536
                                (let ()
                                  (declare (not safe))
                                  (##car _e121338_))))
                           (declare (not safe))
                           (_recur121336_ __tmp125536)))
                        (__tmp125533
                         (let ((__tmp125534
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121338_))))
                           (declare (not safe))
                           (_recur121336_ __tmp125534))))
                    (declare (not safe))
                    (cons __tmp125535 __tmp125533))
                  (if (let () (declare (not safe)) (vector? _e121338_))
                      (vector-map _recur121336_ _e121338_)
                      (if (let () (declare (not safe)) (box? _e121338_))
                          (let ((__tmp125537
                                 (let ((__tmp125538 (unbox _e121338_)))
                                   (declare (not safe))
                                   (_recur121336_ __tmp125538))))
                            (declare (not safe))
                            (box __tmp125537))
                          _e121338_)))))))
    (define __compile-top-source
      (lambda (_stx121332_)
        (let ((__tmp125539
               (let () (declare (not safe)) (__compile-top _stx121332_))))
          (declare (not safe))
          (cons '__noexpand: __tmp125539))))
    (define __compile-top
      (lambda (_stx121330_)
        (let ((__tmp125540 (gx#core-compile-top-syntax _stx121330_)))
          (declare (not safe))
          (__compile __tmp125540))))
    (define __eval-import
      (lambda (_in121311_)
        (letrec* ((_mods121313_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import1121314_
                   (lambda (_in121321_ _phi121322_)
                     (if (gx#module-import? _in121321_)
                         (let ((_iphi121324_
                                (fx+ _phi121322_
                                     (gx#module-import-phi _in121321_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi121324_))
                               (let ((__tmp125541
                                      (gx#module-export-context
                                       (gx#module-import-source _in121321_))))
                                 (declare (not safe))
                                 (_eval1121315_ __tmp125541))
                               '#!void))
                         (if (gx#module-context? _in121321_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi121322_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1121315_ _in121321_))
                                 '#!void)
                             (if (gx#import-set? _in121321_)
                                 (let ((_iphi121326_
                                        (fx+ _phi121322_
                                             (gx#import-set-phi _in121321_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi121326_))
                                       (let ((__tmp125542
                                              (gx#import-set-source
                                               _in121321_)))
                                         (declare (not safe))
                                         (_eval1121315_ __tmp125542))
                                       (if (fxpositive? _iphi121326_)
                                           (for-each
                                            (lambda (_in121328_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1121314_
                                                 _in121328_
                                                 _iphi121326_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in121321_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in121321_))))))
                  (_eval1121315_
                   (lambda (_ctx121319_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods121313_ _ctx121319_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods121313_ _ctx121319_ '#t))
                           (__eval-module _ctx121319_))))))
          (if (let () (declare (not safe)) (pair? _in121311_))
              (for-each
               (lambda (_in121317_)
                 (let () (declare (not safe)) (_import1121314_ _in121317_ '0)))
               _in121311_)
              (let () (declare (not safe)) (_import1121314_ _in121311_ '0))))))
    (define __eval-module
      (lambda (_obj121304_)
        (let* ((_key121306_
                (if (gx#module-context? _obj121304_)
                    (gx#module-context-path _obj121304_)
                    _obj121304_))
               (_$e121308_
                (let ()
                  (declare (not safe))
                  (hash-get __*modules* _key121306_))))
          (if _$e121308_
              (values _$e121308_)
              (gx#core-eval-module _obj121304_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules121239_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home121241_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir121243_ (path-expand '"lib" _home121241_))
                     (_userpath121245_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath121247_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir121243_ '()))
                          (let ((__tmp125543
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir121243_ '()))))
                            (declare (not safe))
                            (cons _userpath121245_ __tmp125543))))
                     (_loadpath121256_
                      (let ((_$e121249_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e121249_
                            ((lambda (_envvar121252_)
                               (append (let ((__tmp125545
                                              (lambda (_x121254_)
                                                (let ((__tmp125546
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x121254_))))
                                                  (declare (not safe))
                                                  (not __tmp125546))))
                                             (__tmp125544
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar121252_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp125545 __tmp125544))
                                       _loadpath121247_))
                             _$e121249_)
                            _loadpath121247_))))
                (current-module-library-path _loadpath121256_))
              (let* ((_registry-entry121261_
                      (lambda (_m121259_)
                        (let ()
                          (declare (not safe))
                          (cons _m121259_ 'builtin))))
                     (_module-registry121301_
                      (let _lp121263_ ((_rest121265_ _builtin-modules121239_)
                                       (_registry121266_ '()))
                        (let* ((_rest121267121275_ _rest121265_)
                               (_else121269121283_
                                (lambda ()
                                  (list->hash-table _registry121266_)))
                               (_K121271121289_
                                (lambda (_rest121286_ _mod121287_)
                                  (let ((__tmp125547
                                         (let ((__tmp125551
                                                (let ((__tmp125552
                                                       (string-append
                                                        _mod121287_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry121261_
                                                   __tmp125552)))
                                               (__tmp125548
                                                (let ((__tmp125549
                                                       (let ((__tmp125550
                                                              (string-append
                                                               _mod121287_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry121261_
                                                          __tmp125550))))
                                                  (declare (not safe))
                                                  (cons __tmp125549
                                                        _registry121266_))))
                                           (declare (not safe))
                                           (cons __tmp125551 __tmp125548))))
                                    (declare (not safe))
                                    (_lp121263_ _rest121286_ __tmp125547)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest121267121275_))
                              (let ((_hd121272121292_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest121267121275_)))
                                    (_tl121273121294_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest121267121275_))))
                                (let* ((_mod121297_ _hd121272121292_)
                                       (_rest121299_ _tl121273121294_))
                                  (declare (not safe))
                                  (_K121271121289_ _rest121299_ _mod121297_)))
                              (let ()
                                (declare (not safe))
                                (_else121269121283_)))))))
                (current-module-registry _module-registry121301_))
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
