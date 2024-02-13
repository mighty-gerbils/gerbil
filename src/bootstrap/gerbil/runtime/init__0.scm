(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707844655)
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
        (letrec* ((_+readtable+121849_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core121851_ (gx#import-module ':gerbil/core))
                 (_pre121853_ (gx#make-prelude-context _core121851_)))
            (gx#current-expander-module-prelude _pre121853_)
            (gx#core-bind-root-syntax! ':<core> _pre121853_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port121856_)
             (input-port-readtable-set! _port121856_ _+readtable+121849_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port121858_)
             (output-port-readtable-set!
              _port121858_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port121858_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline121846_) '#!void))
    (define load-scheme
      (lambda (_path121841_)
        (let ((__tmp126428
               (lambda ()
                 (let ((__tmp126429 (lambda _args121844_ '#f)))
                   (declare (not safe))
                   (##load _path121841_ __tmp126429 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp126428
           __loading-scheme-source
           _path121841_))))
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
      (lambda _paths121836_
        (apply add-library-load-path _paths121836_)
        (apply add-expander-load-path _paths121836_)))
    (define add-library-load-path
      (lambda _paths121825_
        (let* ((_current121827_ (current-module-library-path))
               (_paths121829_ (map path-expand _paths121825_))
               (_paths121833_
                (let ((__tmp126430
                       (lambda (_x121831_)
                         (let ((__tmp126431
                                (member _x121831_ _current121827_)))
                           (declare (not safe))
                           (not __tmp126431)))))
                  (declare (not safe))
                  (filter __tmp126430 _paths121829_))))
          (current-module-library-path
           (append _current121827_ _paths121833_)))))
    (define add-expander-load-path
      (lambda _paths121814_
        (let* ((_current121816_ (gx#current-expander-module-library-path))
               (_paths121818_ (map path-expand _paths121814_))
               (_paths121822_
                (let ((__tmp126432
                       (lambda (_x121820_)
                         (let ((__tmp126433
                                (member _x121820_ _current121816_)))
                           (declare (not safe))
                           (not __tmp126433)))))
                  (declare (not safe))
                  (filter __tmp126432 _paths121818_))))
          (gx#current-expander-module-library-path
           (append _current121816_ _paths121822_)))))
    (define cons-load-path
      (lambda _paths121812_
        (apply cons-library-load-path _paths121812_)
        (apply cons-expander-load-path _paths121812_)))
    (define cons-library-load-path
      (lambda _paths121807_
        (let ((_current121809_ (current-module-library-path))
              (_paths121810_ (map path-expand _paths121807_)))
          (current-module-library-path
           (append _paths121810_ _current121809_)))))
    (define cons-expander-load-path
      (lambda _paths121802_
        (let ((_current121804_ (gx#current-expander-module-library-path))
              (_paths121805_ (map path-expand _paths121802_)))
          (gx#current-expander-module-library-path
           (append _paths121805_ _current121804_)))))
    (define with-cons-load-path
      (lambda (_thunk121798_ . _paths121799_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk121798_
                        _paths121799_))
               _paths121799_)))
    (define with-cons-library-load-path
      (lambda (_thunk121791_ . _paths121792_)
        (let ((_current121794_ (current-module-library-path))
              (_paths121795_ (map path-expand _paths121792_)))
          (let ((__tmp126435 (lambda () (_thunk121791_)))
                (__tmp126434 (append _paths121795_ _current121794_)))
            (declare (not safe))
            (call-with-parameters
             __tmp126435
             current-module-library-path
             __tmp126434)))))
    (define with-cons-expander-load-path
      (lambda (_thunk121784_ . _paths121785_)
        (let ((_current121787_ (gx#current-expander-module-library-path))
              (_paths121788_ (map path-expand _paths121785_)))
          (let ((__tmp126437 (lambda () (_thunk121784_)))
                (__tmp126436 (append _paths121788_ _current121787_)))
            (declare (not safe))
            (call-with-parameters
             __tmp126437
             gx#current-expander-module-library-path
             __tmp126436)))))
    (define __expand-source
      (lambda (_src121770_)
        (letrec ((_expand121772_
                  (lambda (_src121782_)
                    (let ((__tmp126438
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src121782_)))))
                      (declare (not safe))
                      (__compile-top __tmp126438))))
                 (_no-expand121773_
                  (lambda (_src121778_)
                    (if (__loading-scheme-source)
                        _src121778_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src121778_))
                            (let ((_code121780_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src121778_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code121780_))
                                  (if (let ((__tmp126439
                                             (let ()
                                               (declare (not safe))
                                               (##car _code121780_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp126439))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code121780_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e121775_
                 (let ()
                   (declare (not safe))
                   (_no-expand121773_ _src121770_))))
            (if _$e121775_
                _$e121775_
                (let () (declare (not safe)) (_expand121772_ _src121770_)))))))
    (define __macro-descr
      (lambda (_src121756_ _def-syntax?121757_)
        (letrec ((_fail!121759_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src121756_))))
                 (_make-descr121760_
                  (lambda (_size121764_)
                    (let ((_expander121767_
                           (let ((__tmp126440
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src121756_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp126440
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander121767_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?121757_
                             _size121764_
                             _expander121767_
                             _src121756_))
                          (let () (declare (not safe)) (_fail!121759_)))))))
          (if _def-syntax?121757_
              (let () (declare (not safe)) (_make-descr121760_ '-1))
              (let ((_code121762_
                     (let ()
                       (declare (not safe))
                       (##source-code _src121756_))))
                (if (and (let () (declare (not safe)) (##pair? _code121762_))
                         (let ((__tmp126444
                                (let ((__tmp126445
                                       (let ((__tmp126446
                                              (let ()
                                                (declare (not safe))
                                                (##car _code121762_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp126446
                                          _src121756_))))
                                  (declare (not safe))
                                  (##source-code __tmp126445))))
                           (declare (not safe))
                           (##memq __tmp126444 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src121756_ _src121756_ '-3))
                      (let ((__tmp126441
                             (let ((__tmp126442
                                    (let ((__tmp126443
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code121762_))))
                                      (declare (not safe))
                                      (##sourcify __tmp126443 _src121756_))))
                               (declare (not safe))
                               (##form-size __tmp126442))))
                        (declare (not safe))
                        (_make-descr121760_ __tmp126441)))
                    (let () (declare (not safe)) (_fail!121759_))))))))
    (define __source->syntax
      (lambda (_src121750_)
        (let _recur121752_ ((_e121754_ _src121750_))
          (if (let () (declare (not safe)) (##source? _e121754_))
              (let ((__tmp126454
                     (let ((__tmp126455
                            (let ()
                              (declare (not safe))
                              (##source-code _e121754_))))
                       (declare (not safe))
                       (_recur121752_ __tmp126455)))
                    (__tmp126453
                     (let () (declare (not safe)) (##source-locat _e121754_))))
                (declare (not safe))
                (##structure AST::t __tmp126454 __tmp126453))
              (if (let () (declare (not safe)) (pair? _e121754_))
                  (let ((__tmp126451
                         (let ((__tmp126452
                                (let ()
                                  (declare (not safe))
                                  (##car _e121754_))))
                           (declare (not safe))
                           (_recur121752_ __tmp126452)))
                        (__tmp126449
                         (let ((__tmp126450
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121754_))))
                           (declare (not safe))
                           (_recur121752_ __tmp126450))))
                    (declare (not safe))
                    (cons __tmp126451 __tmp126449))
                  (if (let () (declare (not safe)) (vector? _e121754_))
                      (vector-map _recur121752_ _e121754_)
                      (if (let () (declare (not safe)) (box? _e121754_))
                          (let ((__tmp126447
                                 (let ((__tmp126448 (unbox _e121754_)))
                                   (declare (not safe))
                                   (_recur121752_ __tmp126448))))
                            (declare (not safe))
                            (box __tmp126447))
                          _e121754_)))))))
    (define __compile-top-source
      (lambda (_stx121748_)
        (let ((__tmp126456
               (let () (declare (not safe)) (__compile-top _stx121748_))))
          (declare (not safe))
          (cons '__noexpand: __tmp126456))))
    (define __compile-top
      (lambda (_stx121746_)
        (let ((__tmp126457 (gx#core-compile-top-syntax _stx121746_)))
          (declare (not safe))
          (__compile __tmp126457))))
    (define __eval-import
      (lambda (_in121727_)
        (letrec* ((_mods121729_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1121730_
                   (lambda (_in121737_ _phi121738_)
                     (if (gx#module-import? _in121737_)
                         (let ((_iphi121740_
                                (fx+ _phi121738_
                                     (gx#module-import-phi _in121737_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi121740_))
                               (let ((__tmp126459
                                      (gx#module-export-context
                                       (gx#module-import-source _in121737_))))
                                 (declare (not safe))
                                 (_eval1121731_ __tmp126459))
                               '#!void))
                         (if (gx#module-context? _in121737_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi121738_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1121731_ _in121737_))
                                 '#!void)
                             (if (gx#import-set? _in121737_)
                                 (let ((_iphi121742_
                                        (fx+ _phi121738_
                                             (gx#import-set-phi _in121737_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi121742_))
                                       (let ((__tmp126458
                                              (gx#import-set-source
                                               _in121737_)))
                                         (declare (not safe))
                                         (_eval1121731_ __tmp126458))
                                       (if (fxpositive? _iphi121742_)
                                           (for-each
                                            (lambda (_in121744_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1121730_
                                                 _in121744_
                                                 _iphi121742_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in121737_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in121737_))))))
                  (_eval1121731_
                   (lambda (_ctx121735_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods121729_ _ctx121735_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods121729_ _ctx121735_ '#t))
                           (__eval-module _ctx121735_))))))
          (if (let () (declare (not safe)) (pair? _in121727_))
              (for-each
               (lambda (_in121733_)
                 (let () (declare (not safe)) (_import1121730_ _in121733_ '0)))
               _in121727_)
              (let () (declare (not safe)) (_import1121730_ _in121727_ '0))))))
    (define __eval-module
      (lambda (_obj121720_)
        (let* ((_key121722_
                (if (gx#module-context? _obj121720_)
                    (gx#module-context-path _obj121720_)
                    _obj121720_))
               (_$e121724_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key121722_ '#f))))
          (if _$e121724_
              (values _$e121724_)
              (gx#core-eval-module _obj121720_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules121655_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home121657_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir121659_ (path-expand '"lib" _home121657_))
                     (_userpath121661_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath121663_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir121659_ '()))
                          (let ((__tmp126460
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir121659_ '()))))
                            (declare (not safe))
                            (cons _userpath121661_ __tmp126460))))
                     (_loadpath121672_
                      (let ((_$e121665_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e121665_
                            ((lambda (_envvar121668_)
                               (append (let ((__tmp126462
                                              (lambda (_x121670_)
                                                (let ((__tmp126463
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x121670_))))
                                                  (declare (not safe))
                                                  (not __tmp126463))))
                                             (__tmp126461
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar121668_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp126462 __tmp126461))
                                       _loadpath121663_))
                             _$e121665_)
                            _loadpath121663_))))
                (current-module-library-path _loadpath121672_))
              (let* ((_registry-entry121677_
                      (lambda (_m121675_)
                        (let ()
                          (declare (not safe))
                          (cons _m121675_ 'builtin))))
                     (_module-registry121717_
                      (let _lp121679_ ((_rest121681_ _builtin-modules121655_)
                                       (_registry121682_ '()))
                        (let* ((_rest121683121691_ _rest121681_)
                               (_else121685121699_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry121682_))))
                               (_K121687121705_
                                (lambda (_rest121702_ _mod121703_)
                                  (let ((__tmp126464
                                         (let ((__tmp126468
                                                (let ((__tmp126469
                                                       (string-append
                                                        _mod121703_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry121677_
                                                   __tmp126469)))
                                               (__tmp126465
                                                (let ((__tmp126466
                                                       (let ((__tmp126467
                                                              (string-append
                                                               _mod121703_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry121677_
                                                          __tmp126467))))
                                                  (declare (not safe))
                                                  (cons __tmp126466
                                                        _registry121682_))))
                                           (declare (not safe))
                                           (cons __tmp126468 __tmp126465))))
                                    (declare (not safe))
                                    (_lp121679_ _rest121702_ __tmp126464)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest121683121691_))
                              (let ((_hd121688121708_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest121683121691_)))
                                    (_tl121689121710_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest121683121691_))))
                                (let* ((_mod121713_ _hd121688121708_)
                                       (_rest121715_ _tl121689121710_))
                                  (declare (not safe))
                                  (_K121687121705_ _rest121715_ _mod121713_)))
                              (let ()
                                (declare (not safe))
                                (_else121685121699_)))))))
                (current-module-registry _module-registry121717_))
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
