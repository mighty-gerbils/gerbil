(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707740667)
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
        (letrec* ((_+readtable+120466_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core120468_ (gx#import-module ':gerbil/core))
                 (_pre120470_ (gx#make-prelude-context _core120468_)))
            (gx#current-expander-module-prelude _pre120470_)
            (gx#core-bind-root-syntax! ':<core> _pre120470_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port120473_)
             (input-port-readtable-set! _port120473_ _+readtable+120466_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port120475_)
             (output-port-readtable-set!
              _port120475_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port120475_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline120463_) '#!void))
    (define load-scheme
      (lambda (_path120458_)
        (let ((__tmp125045
               (lambda ()
                 (let ((__tmp125046 (lambda _args120461_ '#f)))
                   (declare (not safe))
                   (##load _path120458_ __tmp125046 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp125045
           __loading-scheme-source
           _path120458_))))
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
      (lambda _paths120453_
        (apply add-library-load-path _paths120453_)
        (apply add-expander-load-path _paths120453_)))
    (define add-library-load-path
      (lambda _paths120442_
        (let* ((_current120444_ (current-module-library-path))
               (_paths120446_ (map path-expand _paths120442_))
               (_paths120450_
                (let ((__tmp125047
                       (lambda (_x120448_)
                         (let ((__tmp125048
                                (member _x120448_ _current120444_)))
                           (declare (not safe))
                           (not __tmp125048)))))
                  (declare (not safe))
                  (filter __tmp125047 _paths120446_))))
          (current-module-library-path
           (append _current120444_ _paths120450_)))))
    (define add-expander-load-path
      (lambda _paths120431_
        (let* ((_current120433_ (gx#current-expander-module-library-path))
               (_paths120435_ (map path-expand _paths120431_))
               (_paths120439_
                (let ((__tmp125049
                       (lambda (_x120437_)
                         (let ((__tmp125050
                                (member _x120437_ _current120433_)))
                           (declare (not safe))
                           (not __tmp125050)))))
                  (declare (not safe))
                  (filter __tmp125049 _paths120435_))))
          (gx#current-expander-module-library-path
           (append _current120433_ _paths120439_)))))
    (define cons-load-path
      (lambda _paths120429_
        (apply cons-library-load-path _paths120429_)
        (apply cons-expander-load-path _paths120429_)))
    (define cons-library-load-path
      (lambda _paths120424_
        (let ((_current120426_ (current-module-library-path))
              (_paths120427_ (map path-expand _paths120424_)))
          (current-module-library-path
           (append _paths120427_ _current120426_)))))
    (define cons-expander-load-path
      (lambda _paths120419_
        (let ((_current120421_ (gx#current-expander-module-library-path))
              (_paths120422_ (map path-expand _paths120419_)))
          (gx#current-expander-module-library-path
           (append _paths120422_ _current120421_)))))
    (define with-cons-load-path
      (lambda (_thunk120415_ . _paths120416_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk120415_
                        _paths120416_))
               _paths120416_)))
    (define with-cons-library-load-path
      (lambda (_thunk120408_ . _paths120409_)
        (let ((_current120411_ (current-module-library-path))
              (_paths120412_ (map path-expand _paths120409_)))
          (let ((__tmp125052 (lambda () (_thunk120408_)))
                (__tmp125051 (append _paths120412_ _current120411_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125052
             current-module-library-path
             __tmp125051)))))
    (define with-cons-expander-load-path
      (lambda (_thunk120401_ . _paths120402_)
        (let ((_current120404_ (gx#current-expander-module-library-path))
              (_paths120405_ (map path-expand _paths120402_)))
          (let ((__tmp125054 (lambda () (_thunk120401_)))
                (__tmp125053 (append _paths120405_ _current120404_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125054
             gx#current-expander-module-library-path
             __tmp125053)))))
    (define __expand-source
      (lambda (_src120387_)
        (letrec ((_expand120389_
                  (lambda (_src120399_)
                    (let ((__tmp125055
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src120399_)))))
                      (declare (not safe))
                      (__compile-top __tmp125055))))
                 (_no-expand120390_
                  (lambda (_src120395_)
                    (if (__loading-scheme-source)
                        _src120395_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src120395_))
                            (let ((_code120397_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src120395_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code120397_))
                                  (if (let ((__tmp125056
                                             (let ()
                                               (declare (not safe))
                                               (##car _code120397_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp125056))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code120397_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e120392_
                 (let ()
                   (declare (not safe))
                   (_no-expand120390_ _src120387_))))
            (if _$e120392_
                _$e120392_
                (let () (declare (not safe)) (_expand120389_ _src120387_)))))))
    (define __macro-descr
      (lambda (_src120373_ _def-syntax?120374_)
        (letrec ((_fail!120376_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src120373_))))
                 (_make-descr120377_
                  (lambda (_size120381_)
                    (let ((_expander120384_
                           (let ((__tmp125057
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src120373_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp125057
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander120384_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?120374_
                             _size120381_
                             _expander120384_
                             _src120373_))
                          (let () (declare (not safe)) (_fail!120376_)))))))
          (if _def-syntax?120374_
              (let () (declare (not safe)) (_make-descr120377_ '-1))
              (let ((_code120379_
                     (let ()
                       (declare (not safe))
                       (##source-code _src120373_))))
                (if (and (let () (declare (not safe)) (##pair? _code120379_))
                         (let ((__tmp125061
                                (let ((__tmp125062
                                       (let ((__tmp125063
                                              (let ()
                                                (declare (not safe))
                                                (##car _code120379_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp125063
                                          _src120373_))))
                                  (declare (not safe))
                                  (##source-code __tmp125062))))
                           (declare (not safe))
                           (##memq __tmp125061 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src120373_ _src120373_ '-3))
                      (let ((__tmp125058
                             (let ((__tmp125059
                                    (let ((__tmp125060
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code120379_))))
                                      (declare (not safe))
                                      (##sourcify __tmp125060 _src120373_))))
                               (declare (not safe))
                               (##form-size __tmp125059))))
                        (declare (not safe))
                        (_make-descr120377_ __tmp125058)))
                    (let () (declare (not safe)) (_fail!120376_))))))))
    (define __source->syntax
      (lambda (_src120367_)
        (let _recur120369_ ((_e120371_ _src120367_))
          (if (let () (declare (not safe)) (##source? _e120371_))
              (let ((__tmp125071
                     (let ((__tmp125072
                            (let ()
                              (declare (not safe))
                              (##source-code _e120371_))))
                       (declare (not safe))
                       (_recur120369_ __tmp125072)))
                    (__tmp125070
                     (let () (declare (not safe)) (##source-locat _e120371_))))
                (declare (not safe))
                (##structure AST::t __tmp125071 __tmp125070))
              (if (let () (declare (not safe)) (pair? _e120371_))
                  (let ((__tmp125068
                         (let ((__tmp125069
                                (let ()
                                  (declare (not safe))
                                  (##car _e120371_))))
                           (declare (not safe))
                           (_recur120369_ __tmp125069)))
                        (__tmp125066
                         (let ((__tmp125067
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120371_))))
                           (declare (not safe))
                           (_recur120369_ __tmp125067))))
                    (declare (not safe))
                    (cons __tmp125068 __tmp125066))
                  (if (let () (declare (not safe)) (vector? _e120371_))
                      (vector-map _recur120369_ _e120371_)
                      (if (let () (declare (not safe)) (box? _e120371_))
                          (let ((__tmp125064
                                 (let ((__tmp125065 (unbox _e120371_)))
                                   (declare (not safe))
                                   (_recur120369_ __tmp125065))))
                            (declare (not safe))
                            (box __tmp125064))
                          _e120371_)))))))
    (define __compile-top-source
      (lambda (_stx120365_)
        (let ((__tmp125073
               (let () (declare (not safe)) (__compile-top _stx120365_))))
          (declare (not safe))
          (cons '__noexpand: __tmp125073))))
    (define __compile-top
      (lambda (_stx120363_)
        (let ((__tmp125074 (gx#core-compile-top-syntax _stx120363_)))
          (declare (not safe))
          (__compile __tmp125074))))
    (define __eval-import
      (lambda (_in120344_)
        (letrec* ((_mods120346_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1120347_
                   (lambda (_in120354_ _phi120355_)
                     (if (gx#module-import? _in120354_)
                         (let ((_iphi120357_
                                (fx+ _phi120355_
                                     (gx#module-import-phi _in120354_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi120357_))
                               (let ((__tmp125076
                                      (gx#module-export-context
                                       (gx#module-import-source _in120354_))))
                                 (declare (not safe))
                                 (_eval1120348_ __tmp125076))
                               '#!void))
                         (if (gx#module-context? _in120354_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi120355_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1120348_ _in120354_))
                                 '#!void)
                             (if (gx#import-set? _in120354_)
                                 (let ((_iphi120359_
                                        (fx+ _phi120355_
                                             (gx#import-set-phi _in120354_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi120359_))
                                       (let ((__tmp125075
                                              (gx#import-set-source
                                               _in120354_)))
                                         (declare (not safe))
                                         (_eval1120348_ __tmp125075))
                                       (if (fxpositive? _iphi120359_)
                                           (for-each
                                            (lambda (_in120361_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1120347_
                                                 _in120361_
                                                 _iphi120359_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in120354_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in120354_))))))
                  (_eval1120348_
                   (lambda (_ctx120352_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods120346_ _ctx120352_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods120346_ _ctx120352_ '#t))
                           (__eval-module _ctx120352_))))))
          (if (let () (declare (not safe)) (pair? _in120344_))
              (for-each
               (lambda (_in120350_)
                 (let () (declare (not safe)) (_import1120347_ _in120350_ '0)))
               _in120344_)
              (let () (declare (not safe)) (_import1120347_ _in120344_ '0))))))
    (define __eval-module
      (lambda (_obj120337_)
        (let* ((_key120339_
                (if (gx#module-context? _obj120337_)
                    (gx#module-context-path _obj120337_)
                    _obj120337_))
               (_$e120341_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key120339_ '#f))))
          (if _$e120341_
              (values _$e120341_)
              (gx#core-eval-module _obj120337_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules120272_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home120274_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir120276_ (path-expand '"lib" _home120274_))
                     (_userpath120278_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath120280_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir120276_ '()))
                          (let ((__tmp125077
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir120276_ '()))))
                            (declare (not safe))
                            (cons _userpath120278_ __tmp125077))))
                     (_loadpath120289_
                      (let ((_$e120282_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e120282_
                            ((lambda (_envvar120285_)
                               (append (let ((__tmp125079
                                              (lambda (_x120287_)
                                                (let ((__tmp125080
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x120287_))))
                                                  (declare (not safe))
                                                  (not __tmp125080))))
                                             (__tmp125078
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar120285_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp125079 __tmp125078))
                                       _loadpath120280_))
                             _$e120282_)
                            _loadpath120280_))))
                (current-module-library-path _loadpath120289_))
              (let* ((_registry-entry120294_
                      (lambda (_m120292_)
                        (let ()
                          (declare (not safe))
                          (cons _m120292_ 'builtin))))
                     (_module-registry120334_
                      (let _lp120296_ ((_rest120298_ _builtin-modules120272_)
                                       (_registry120299_ '()))
                        (let* ((_rest120300120308_ _rest120298_)
                               (_else120302120316_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry120299_))))
                               (_K120304120322_
                                (lambda (_rest120319_ _mod120320_)
                                  (let ((__tmp125081
                                         (let ((__tmp125085
                                                (let ((__tmp125086
                                                       (string-append
                                                        _mod120320_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry120294_
                                                   __tmp125086)))
                                               (__tmp125082
                                                (let ((__tmp125083
                                                       (let ((__tmp125084
                                                              (string-append
                                                               _mod120320_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry120294_
                                                          __tmp125084))))
                                                  (declare (not safe))
                                                  (cons __tmp125083
                                                        _registry120299_))))
                                           (declare (not safe))
                                           (cons __tmp125085 __tmp125082))))
                                    (declare (not safe))
                                    (_lp120296_ _rest120319_ __tmp125081)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest120300120308_))
                              (let ((_hd120305120325_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest120300120308_)))
                                    (_tl120306120327_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest120300120308_))))
                                (let* ((_mod120330_ _hd120305120325_)
                                       (_rest120332_ _tl120306120327_))
                                  (declare (not safe))
                                  (_K120304120322_ _rest120332_ _mod120330_)))
                              (let ()
                                (declare (not safe))
                                (_else120302120316_)))))))
                (current-module-registry _module-registry120334_))
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
