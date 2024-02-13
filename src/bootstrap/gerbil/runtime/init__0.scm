(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707847727)
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
        (letrec* ((_+readtable+121850_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core121852_ (gx#import-module ':gerbil/core))
                 (_pre121854_ (gx#make-prelude-context _core121852_)))
            (gx#current-expander-module-prelude _pre121854_)
            (gx#core-bind-root-syntax! ':<core> _pre121854_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port121857_)
             (input-port-readtable-set! _port121857_ _+readtable+121850_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port121859_)
             (output-port-readtable-set!
              _port121859_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port121859_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline121847_) '#!void))
    (define load-scheme
      (lambda (_path121842_)
        (let ((__tmp126429
               (lambda ()
                 (let ((__tmp126430 (lambda _args121845_ '#f)))
                   (declare (not safe))
                   (##load _path121842_ __tmp126430 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp126429
           __loading-scheme-source
           _path121842_))))
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
      (lambda _paths121837_
        (apply add-library-load-path _paths121837_)
        (apply add-expander-load-path _paths121837_)))
    (define add-library-load-path
      (lambda _paths121826_
        (let* ((_current121828_ (current-module-library-path))
               (_paths121830_ (map path-expand _paths121826_))
               (_paths121834_
                (let ((__tmp126431
                       (lambda (_x121832_)
                         (let ((__tmp126432
                                (member _x121832_ _current121828_)))
                           (declare (not safe))
                           (not __tmp126432)))))
                  (declare (not safe))
                  (filter __tmp126431 _paths121830_))))
          (current-module-library-path
           (append _current121828_ _paths121834_)))))
    (define add-expander-load-path
      (lambda _paths121815_
        (let* ((_current121817_ (gx#current-expander-module-library-path))
               (_paths121819_ (map path-expand _paths121815_))
               (_paths121823_
                (let ((__tmp126433
                       (lambda (_x121821_)
                         (let ((__tmp126434
                                (member _x121821_ _current121817_)))
                           (declare (not safe))
                           (not __tmp126434)))))
                  (declare (not safe))
                  (filter __tmp126433 _paths121819_))))
          (gx#current-expander-module-library-path
           (append _current121817_ _paths121823_)))))
    (define cons-load-path
      (lambda _paths121813_
        (apply cons-library-load-path _paths121813_)
        (apply cons-expander-load-path _paths121813_)))
    (define cons-library-load-path
      (lambda _paths121808_
        (let ((_current121810_ (current-module-library-path))
              (_paths121811_ (map path-expand _paths121808_)))
          (current-module-library-path
           (append _paths121811_ _current121810_)))))
    (define cons-expander-load-path
      (lambda _paths121803_
        (let ((_current121805_ (gx#current-expander-module-library-path))
              (_paths121806_ (map path-expand _paths121803_)))
          (gx#current-expander-module-library-path
           (append _paths121806_ _current121805_)))))
    (define with-cons-load-path
      (lambda (_thunk121799_ . _paths121800_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk121799_
                        _paths121800_))
               _paths121800_)))
    (define with-cons-library-load-path
      (lambda (_thunk121792_ . _paths121793_)
        (let ((_current121795_ (current-module-library-path))
              (_paths121796_ (map path-expand _paths121793_)))
          (let ((__tmp126436 (lambda () (_thunk121792_)))
                (__tmp126435 (append _paths121796_ _current121795_)))
            (declare (not safe))
            (call-with-parameters
             __tmp126436
             current-module-library-path
             __tmp126435)))))
    (define with-cons-expander-load-path
      (lambda (_thunk121785_ . _paths121786_)
        (let ((_current121788_ (gx#current-expander-module-library-path))
              (_paths121789_ (map path-expand _paths121786_)))
          (let ((__tmp126438 (lambda () (_thunk121785_)))
                (__tmp126437 (append _paths121789_ _current121788_)))
            (declare (not safe))
            (call-with-parameters
             __tmp126438
             gx#current-expander-module-library-path
             __tmp126437)))))
    (define __expand-source
      (lambda (_src121771_)
        (letrec ((_expand121773_
                  (lambda (_src121783_)
                    (let ((__tmp126439
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src121783_)))))
                      (declare (not safe))
                      (__compile-top __tmp126439))))
                 (_no-expand121774_
                  (lambda (_src121779_)
                    (if (__loading-scheme-source)
                        _src121779_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src121779_))
                            (let ((_code121781_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src121779_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code121781_))
                                  (if (let ((__tmp126440
                                             (let ()
                                               (declare (not safe))
                                               (##car _code121781_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp126440))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code121781_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e121776_
                 (let ()
                   (declare (not safe))
                   (_no-expand121774_ _src121771_))))
            (if _$e121776_
                _$e121776_
                (let () (declare (not safe)) (_expand121773_ _src121771_)))))))
    (define __macro-descr
      (lambda (_src121757_ _def-syntax?121758_)
        (letrec ((_fail!121760_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src121757_))))
                 (_make-descr121761_
                  (lambda (_size121765_)
                    (let ((_expander121768_
                           (let ((__tmp126441
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src121757_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp126441
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander121768_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?121758_
                             _size121765_
                             _expander121768_
                             _src121757_))
                          (let () (declare (not safe)) (_fail!121760_)))))))
          (if _def-syntax?121758_
              (let () (declare (not safe)) (_make-descr121761_ '-1))
              (let ((_code121763_
                     (let ()
                       (declare (not safe))
                       (##source-code _src121757_))))
                (if (and (let () (declare (not safe)) (##pair? _code121763_))
                         (let ((__tmp126445
                                (let ((__tmp126446
                                       (let ((__tmp126447
                                              (let ()
                                                (declare (not safe))
                                                (##car _code121763_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp126447
                                          _src121757_))))
                                  (declare (not safe))
                                  (##source-code __tmp126446))))
                           (declare (not safe))
                           (##memq __tmp126445 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src121757_ _src121757_ '-3))
                      (let ((__tmp126442
                             (let ((__tmp126443
                                    (let ((__tmp126444
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code121763_))))
                                      (declare (not safe))
                                      (##sourcify __tmp126444 _src121757_))))
                               (declare (not safe))
                               (##form-size __tmp126443))))
                        (declare (not safe))
                        (_make-descr121761_ __tmp126442)))
                    (let () (declare (not safe)) (_fail!121760_))))))))
    (define __source->syntax
      (lambda (_src121751_)
        (let _recur121753_ ((_e121755_ _src121751_))
          (if (let () (declare (not safe)) (##source? _e121755_))
              (let ((__tmp126455
                     (let ((__tmp126456
                            (let ()
                              (declare (not safe))
                              (##source-code _e121755_))))
                       (declare (not safe))
                       (_recur121753_ __tmp126456)))
                    (__tmp126454
                     (let () (declare (not safe)) (##source-locat _e121755_))))
                (declare (not safe))
                (##structure AST::t __tmp126455 __tmp126454))
              (if (let () (declare (not safe)) (pair? _e121755_))
                  (let ((__tmp126452
                         (let ((__tmp126453
                                (let ()
                                  (declare (not safe))
                                  (##car _e121755_))))
                           (declare (not safe))
                           (_recur121753_ __tmp126453)))
                        (__tmp126450
                         (let ((__tmp126451
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121755_))))
                           (declare (not safe))
                           (_recur121753_ __tmp126451))))
                    (declare (not safe))
                    (cons __tmp126452 __tmp126450))
                  (if (let () (declare (not safe)) (vector? _e121755_))
                      (vector-map _recur121753_ _e121755_)
                      (if (let () (declare (not safe)) (box? _e121755_))
                          (let ((__tmp126448
                                 (let ((__tmp126449 (unbox _e121755_)))
                                   (declare (not safe))
                                   (_recur121753_ __tmp126449))))
                            (declare (not safe))
                            (box __tmp126448))
                          _e121755_)))))))
    (define __compile-top-source
      (lambda (_stx121749_)
        (let ((__tmp126457
               (let () (declare (not safe)) (__compile-top _stx121749_))))
          (declare (not safe))
          (cons '__noexpand: __tmp126457))))
    (define __compile-top
      (lambda (_stx121747_)
        (let ((__tmp126458 (gx#core-compile-top-syntax _stx121747_)))
          (declare (not safe))
          (__compile __tmp126458))))
    (define __eval-import
      (lambda (_in121728_)
        (letrec* ((_mods121730_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1121731_
                   (lambda (_in121738_ _phi121739_)
                     (if (gx#module-import? _in121738_)
                         (let ((_iphi121741_
                                (fx+ _phi121739_
                                     (gx#module-import-phi _in121738_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi121741_))
                               (let ((__tmp126460
                                      (gx#module-export-context
                                       (gx#module-import-source _in121738_))))
                                 (declare (not safe))
                                 (_eval1121732_ __tmp126460))
                               '#!void))
                         (if (gx#module-context? _in121738_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi121739_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1121732_ _in121738_))
                                 '#!void)
                             (if (gx#import-set? _in121738_)
                                 (let ((_iphi121743_
                                        (fx+ _phi121739_
                                             (gx#import-set-phi _in121738_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi121743_))
                                       (let ((__tmp126459
                                              (gx#import-set-source
                                               _in121738_)))
                                         (declare (not safe))
                                         (_eval1121732_ __tmp126459))
                                       (if (fxpositive? _iphi121743_)
                                           (for-each
                                            (lambda (_in121745_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1121731_
                                                 _in121745_
                                                 _iphi121743_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in121738_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in121738_))))))
                  (_eval1121732_
                   (lambda (_ctx121736_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods121730_ _ctx121736_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods121730_ _ctx121736_ '#t))
                           (__eval-module _ctx121736_))))))
          (if (let () (declare (not safe)) (pair? _in121728_))
              (for-each
               (lambda (_in121734_)
                 (let () (declare (not safe)) (_import1121731_ _in121734_ '0)))
               _in121728_)
              (let () (declare (not safe)) (_import1121731_ _in121728_ '0))))))
    (define __eval-module
      (lambda (_obj121721_)
        (let* ((_key121723_
                (if (gx#module-context? _obj121721_)
                    (gx#module-context-path _obj121721_)
                    _obj121721_))
               (_$e121725_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key121723_ '#f))))
          (if _$e121725_
              (values _$e121725_)
              (gx#core-eval-module _obj121721_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules121656_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home121658_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir121660_ (path-expand '"lib" _home121658_))
                     (_userpath121662_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath121664_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir121660_ '()))
                          (let ((__tmp126461
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir121660_ '()))))
                            (declare (not safe))
                            (cons _userpath121662_ __tmp126461))))
                     (_loadpath121673_
                      (let ((_$e121666_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e121666_
                            ((lambda (_envvar121669_)
                               (append (let ((__tmp126463
                                              (lambda (_x121671_)
                                                (let ((__tmp126464
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x121671_))))
                                                  (declare (not safe))
                                                  (not __tmp126464))))
                                             (__tmp126462
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar121669_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp126463 __tmp126462))
                                       _loadpath121664_))
                             _$e121666_)
                            _loadpath121664_))))
                (current-module-library-path _loadpath121673_))
              (let* ((_registry-entry121678_
                      (lambda (_m121676_)
                        (let ()
                          (declare (not safe))
                          (cons _m121676_ 'builtin))))
                     (_module-registry121718_
                      (let _lp121680_ ((_rest121682_ _builtin-modules121656_)
                                       (_registry121683_ '()))
                        (let* ((_rest121684121692_ _rest121682_)
                               (_else121686121700_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry121683_))))
                               (_K121688121706_
                                (lambda (_rest121703_ _mod121704_)
                                  (let ((__tmp126465
                                         (let ((__tmp126469
                                                (let ((__tmp126470
                                                       (string-append
                                                        _mod121704_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry121678_
                                                   __tmp126470)))
                                               (__tmp126466
                                                (let ((__tmp126467
                                                       (let ((__tmp126468
                                                              (string-append
                                                               _mod121704_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry121678_
                                                          __tmp126468))))
                                                  (declare (not safe))
                                                  (cons __tmp126467
                                                        _registry121683_))))
                                           (declare (not safe))
                                           (cons __tmp126469 __tmp126466))))
                                    (declare (not safe))
                                    (_lp121680_ _rest121703_ __tmp126465)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest121684121692_))
                              (let ((_hd121689121709_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest121684121692_)))
                                    (_tl121690121711_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest121684121692_))))
                                (let* ((_mod121714_ _hd121689121709_)
                                       (_rest121716_ _tl121690121711_))
                                  (declare (not safe))
                                  (_K121688121706_ _rest121716_ _mod121714_)))
                              (let ()
                                (declare (not safe))
                                (_else121686121700_)))))))
                (current-module-registry _module-registry121718_))
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
