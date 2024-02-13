(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707841978)
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
        (letrec* ((_+readtable+121845_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core121847_ (gx#import-module ':gerbil/core))
                 (_pre121849_ (gx#make-prelude-context _core121847_)))
            (gx#current-expander-module-prelude _pre121849_)
            (gx#core-bind-root-syntax! ':<core> _pre121849_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port121852_)
             (input-port-readtable-set! _port121852_ _+readtable+121845_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port121854_)
             (output-port-readtable-set!
              _port121854_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port121854_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline121842_) '#!void))
    (define load-scheme
      (lambda (_path121837_)
        (let ((__tmp126424
               (lambda ()
                 (let ((__tmp126425 (lambda _args121840_ '#f)))
                   (declare (not safe))
                   (##load _path121837_ __tmp126425 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp126424
           __loading-scheme-source
           _path121837_))))
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
      (lambda _paths121832_
        (apply add-library-load-path _paths121832_)
        (apply add-expander-load-path _paths121832_)))
    (define add-library-load-path
      (lambda _paths121821_
        (let* ((_current121823_ (current-module-library-path))
               (_paths121825_ (map path-expand _paths121821_))
               (_paths121829_
                (let ((__tmp126426
                       (lambda (_x121827_)
                         (let ((__tmp126427
                                (member _x121827_ _current121823_)))
                           (declare (not safe))
                           (not __tmp126427)))))
                  (declare (not safe))
                  (filter __tmp126426 _paths121825_))))
          (current-module-library-path
           (append _current121823_ _paths121829_)))))
    (define add-expander-load-path
      (lambda _paths121810_
        (let* ((_current121812_ (gx#current-expander-module-library-path))
               (_paths121814_ (map path-expand _paths121810_))
               (_paths121818_
                (let ((__tmp126428
                       (lambda (_x121816_)
                         (let ((__tmp126429
                                (member _x121816_ _current121812_)))
                           (declare (not safe))
                           (not __tmp126429)))))
                  (declare (not safe))
                  (filter __tmp126428 _paths121814_))))
          (gx#current-expander-module-library-path
           (append _current121812_ _paths121818_)))))
    (define cons-load-path
      (lambda _paths121808_
        (apply cons-library-load-path _paths121808_)
        (apply cons-expander-load-path _paths121808_)))
    (define cons-library-load-path
      (lambda _paths121803_
        (let ((_current121805_ (current-module-library-path))
              (_paths121806_ (map path-expand _paths121803_)))
          (current-module-library-path
           (append _paths121806_ _current121805_)))))
    (define cons-expander-load-path
      (lambda _paths121798_
        (let ((_current121800_ (gx#current-expander-module-library-path))
              (_paths121801_ (map path-expand _paths121798_)))
          (gx#current-expander-module-library-path
           (append _paths121801_ _current121800_)))))
    (define with-cons-load-path
      (lambda (_thunk121794_ . _paths121795_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk121794_
                        _paths121795_))
               _paths121795_)))
    (define with-cons-library-load-path
      (lambda (_thunk121787_ . _paths121788_)
        (let ((_current121790_ (current-module-library-path))
              (_paths121791_ (map path-expand _paths121788_)))
          (let ((__tmp126431 (lambda () (_thunk121787_)))
                (__tmp126430 (append _paths121791_ _current121790_)))
            (declare (not safe))
            (call-with-parameters
             __tmp126431
             current-module-library-path
             __tmp126430)))))
    (define with-cons-expander-load-path
      (lambda (_thunk121780_ . _paths121781_)
        (let ((_current121783_ (gx#current-expander-module-library-path))
              (_paths121784_ (map path-expand _paths121781_)))
          (let ((__tmp126433 (lambda () (_thunk121780_)))
                (__tmp126432 (append _paths121784_ _current121783_)))
            (declare (not safe))
            (call-with-parameters
             __tmp126433
             gx#current-expander-module-library-path
             __tmp126432)))))
    (define __expand-source
      (lambda (_src121766_)
        (letrec ((_expand121768_
                  (lambda (_src121778_)
                    (let ((__tmp126434
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src121778_)))))
                      (declare (not safe))
                      (__compile-top __tmp126434))))
                 (_no-expand121769_
                  (lambda (_src121774_)
                    (if (__loading-scheme-source)
                        _src121774_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src121774_))
                            (let ((_code121776_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src121774_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code121776_))
                                  (if (let ((__tmp126435
                                             (let ()
                                               (declare (not safe))
                                               (##car _code121776_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp126435))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code121776_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e121771_
                 (let ()
                   (declare (not safe))
                   (_no-expand121769_ _src121766_))))
            (if _$e121771_
                _$e121771_
                (let () (declare (not safe)) (_expand121768_ _src121766_)))))))
    (define __macro-descr
      (lambda (_src121752_ _def-syntax?121753_)
        (letrec ((_fail!121755_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src121752_))))
                 (_make-descr121756_
                  (lambda (_size121760_)
                    (let ((_expander121763_
                           (let ((__tmp126436
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src121752_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp126436
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander121763_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?121753_
                             _size121760_
                             _expander121763_
                             _src121752_))
                          (let () (declare (not safe)) (_fail!121755_)))))))
          (if _def-syntax?121753_
              (let () (declare (not safe)) (_make-descr121756_ '-1))
              (let ((_code121758_
                     (let ()
                       (declare (not safe))
                       (##source-code _src121752_))))
                (if (and (let () (declare (not safe)) (##pair? _code121758_))
                         (let ((__tmp126440
                                (let ((__tmp126441
                                       (let ((__tmp126442
                                              (let ()
                                                (declare (not safe))
                                                (##car _code121758_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp126442
                                          _src121752_))))
                                  (declare (not safe))
                                  (##source-code __tmp126441))))
                           (declare (not safe))
                           (##memq __tmp126440 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src121752_ _src121752_ '-3))
                      (let ((__tmp126437
                             (let ((__tmp126438
                                    (let ((__tmp126439
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code121758_))))
                                      (declare (not safe))
                                      (##sourcify __tmp126439 _src121752_))))
                               (declare (not safe))
                               (##form-size __tmp126438))))
                        (declare (not safe))
                        (_make-descr121756_ __tmp126437)))
                    (let () (declare (not safe)) (_fail!121755_))))))))
    (define __source->syntax
      (lambda (_src121746_)
        (let _recur121748_ ((_e121750_ _src121746_))
          (if (let () (declare (not safe)) (##source? _e121750_))
              (let ((__tmp126450
                     (let ((__tmp126451
                            (let ()
                              (declare (not safe))
                              (##source-code _e121750_))))
                       (declare (not safe))
                       (_recur121748_ __tmp126451)))
                    (__tmp126449
                     (let () (declare (not safe)) (##source-locat _e121750_))))
                (declare (not safe))
                (##structure AST::t __tmp126450 __tmp126449))
              (if (let () (declare (not safe)) (pair? _e121750_))
                  (let ((__tmp126447
                         (let ((__tmp126448
                                (let ()
                                  (declare (not safe))
                                  (##car _e121750_))))
                           (declare (not safe))
                           (_recur121748_ __tmp126448)))
                        (__tmp126445
                         (let ((__tmp126446
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121750_))))
                           (declare (not safe))
                           (_recur121748_ __tmp126446))))
                    (declare (not safe))
                    (cons __tmp126447 __tmp126445))
                  (if (let () (declare (not safe)) (vector? _e121750_))
                      (vector-map _recur121748_ _e121750_)
                      (if (let () (declare (not safe)) (box? _e121750_))
                          (let ((__tmp126443
                                 (let ((__tmp126444 (unbox _e121750_)))
                                   (declare (not safe))
                                   (_recur121748_ __tmp126444))))
                            (declare (not safe))
                            (box __tmp126443))
                          _e121750_)))))))
    (define __compile-top-source
      (lambda (_stx121744_)
        (let ((__tmp126452
               (let () (declare (not safe)) (__compile-top _stx121744_))))
          (declare (not safe))
          (cons '__noexpand: __tmp126452))))
    (define __compile-top
      (lambda (_stx121742_)
        (let ((__tmp126453 (gx#core-compile-top-syntax _stx121742_)))
          (declare (not safe))
          (__compile __tmp126453))))
    (define __eval-import
      (lambda (_in121723_)
        (letrec* ((_mods121725_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1121726_
                   (lambda (_in121733_ _phi121734_)
                     (if (gx#module-import? _in121733_)
                         (let ((_iphi121736_
                                (fx+ _phi121734_
                                     (gx#module-import-phi _in121733_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi121736_))
                               (let ((__tmp126455
                                      (gx#module-export-context
                                       (gx#module-import-source _in121733_))))
                                 (declare (not safe))
                                 (_eval1121727_ __tmp126455))
                               '#!void))
                         (if (gx#module-context? _in121733_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi121734_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1121727_ _in121733_))
                                 '#!void)
                             (if (gx#import-set? _in121733_)
                                 (let ((_iphi121738_
                                        (fx+ _phi121734_
                                             (gx#import-set-phi _in121733_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi121738_))
                                       (let ((__tmp126454
                                              (gx#import-set-source
                                               _in121733_)))
                                         (declare (not safe))
                                         (_eval1121727_ __tmp126454))
                                       (if (fxpositive? _iphi121738_)
                                           (for-each
                                            (lambda (_in121740_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1121726_
                                                 _in121740_
                                                 _iphi121738_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in121733_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in121733_))))))
                  (_eval1121727_
                   (lambda (_ctx121731_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods121725_ _ctx121731_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods121725_ _ctx121731_ '#t))
                           (__eval-module _ctx121731_))))))
          (if (let () (declare (not safe)) (pair? _in121723_))
              (for-each
               (lambda (_in121729_)
                 (let () (declare (not safe)) (_import1121726_ _in121729_ '0)))
               _in121723_)
              (let () (declare (not safe)) (_import1121726_ _in121723_ '0))))))
    (define __eval-module
      (lambda (_obj121716_)
        (let* ((_key121718_
                (if (gx#module-context? _obj121716_)
                    (gx#module-context-path _obj121716_)
                    _obj121716_))
               (_$e121720_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key121718_ '#f))))
          (if _$e121720_
              (values _$e121720_)
              (gx#core-eval-module _obj121716_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules121651_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home121653_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir121655_ (path-expand '"lib" _home121653_))
                     (_userpath121657_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath121659_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir121655_ '()))
                          (let ((__tmp126456
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir121655_ '()))))
                            (declare (not safe))
                            (cons _userpath121657_ __tmp126456))))
                     (_loadpath121668_
                      (let ((_$e121661_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e121661_
                            ((lambda (_envvar121664_)
                               (append (let ((__tmp126458
                                              (lambda (_x121666_)
                                                (let ((__tmp126459
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x121666_))))
                                                  (declare (not safe))
                                                  (not __tmp126459))))
                                             (__tmp126457
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar121664_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp126458 __tmp126457))
                                       _loadpath121659_))
                             _$e121661_)
                            _loadpath121659_))))
                (current-module-library-path _loadpath121668_))
              (let* ((_registry-entry121673_
                      (lambda (_m121671_)
                        (let ()
                          (declare (not safe))
                          (cons _m121671_ 'builtin))))
                     (_module-registry121713_
                      (let _lp121675_ ((_rest121677_ _builtin-modules121651_)
                                       (_registry121678_ '()))
                        (let* ((_rest121679121687_ _rest121677_)
                               (_else121681121695_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry121678_))))
                               (_K121683121701_
                                (lambda (_rest121698_ _mod121699_)
                                  (let ((__tmp126460
                                         (let ((__tmp126464
                                                (let ((__tmp126465
                                                       (string-append
                                                        _mod121699_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry121673_
                                                   __tmp126465)))
                                               (__tmp126461
                                                (let ((__tmp126462
                                                       (let ((__tmp126463
                                                              (string-append
                                                               _mod121699_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry121673_
                                                          __tmp126463))))
                                                  (declare (not safe))
                                                  (cons __tmp126462
                                                        _registry121678_))))
                                           (declare (not safe))
                                           (cons __tmp126464 __tmp126461))))
                                    (declare (not safe))
                                    (_lp121675_ _rest121698_ __tmp126460)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest121679121687_))
                              (let ((_hd121684121704_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest121679121687_)))
                                    (_tl121685121706_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest121679121687_))))
                                (let* ((_mod121709_ _hd121684121704_)
                                       (_rest121711_ _tl121685121706_))
                                  (declare (not safe))
                                  (_K121683121701_ _rest121711_ _mod121709_)))
                              (let ()
                                (declare (not safe))
                                (_else121681121695_)))))))
                (current-module-registry _module-registry121713_))
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
