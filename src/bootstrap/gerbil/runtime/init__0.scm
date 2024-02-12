(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707742539)
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
        (letrec* ((_+readtable+120464_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core120466_ (gx#import-module ':gerbil/core))
                 (_pre120468_ (gx#make-prelude-context _core120466_)))
            (gx#current-expander-module-prelude _pre120468_)
            (gx#core-bind-root-syntax! ':<core> _pre120468_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port120471_)
             (input-port-readtable-set! _port120471_ _+readtable+120464_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port120473_)
             (output-port-readtable-set!
              _port120473_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port120473_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline120461_) '#!void))
    (define load-scheme
      (lambda (_path120456_)
        (let ((__tmp125043
               (lambda ()
                 (let ((__tmp125044 (lambda _args120459_ '#f)))
                   (declare (not safe))
                   (##load _path120456_ __tmp125044 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp125043
           __loading-scheme-source
           _path120456_))))
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
      (lambda _paths120451_
        (apply add-library-load-path _paths120451_)
        (apply add-expander-load-path _paths120451_)))
    (define add-library-load-path
      (lambda _paths120440_
        (let* ((_current120442_ (current-module-library-path))
               (_paths120444_ (map path-expand _paths120440_))
               (_paths120448_
                (let ((__tmp125045
                       (lambda (_x120446_)
                         (let ((__tmp125046
                                (member _x120446_ _current120442_)))
                           (declare (not safe))
                           (not __tmp125046)))))
                  (declare (not safe))
                  (filter __tmp125045 _paths120444_))))
          (current-module-library-path
           (append _current120442_ _paths120448_)))))
    (define add-expander-load-path
      (lambda _paths120429_
        (let* ((_current120431_ (gx#current-expander-module-library-path))
               (_paths120433_ (map path-expand _paths120429_))
               (_paths120437_
                (let ((__tmp125047
                       (lambda (_x120435_)
                         (let ((__tmp125048
                                (member _x120435_ _current120431_)))
                           (declare (not safe))
                           (not __tmp125048)))))
                  (declare (not safe))
                  (filter __tmp125047 _paths120433_))))
          (gx#current-expander-module-library-path
           (append _current120431_ _paths120437_)))))
    (define cons-load-path
      (lambda _paths120427_
        (apply cons-library-load-path _paths120427_)
        (apply cons-expander-load-path _paths120427_)))
    (define cons-library-load-path
      (lambda _paths120422_
        (let ((_current120424_ (current-module-library-path))
              (_paths120425_ (map path-expand _paths120422_)))
          (current-module-library-path
           (append _paths120425_ _current120424_)))))
    (define cons-expander-load-path
      (lambda _paths120417_
        (let ((_current120419_ (gx#current-expander-module-library-path))
              (_paths120420_ (map path-expand _paths120417_)))
          (gx#current-expander-module-library-path
           (append _paths120420_ _current120419_)))))
    (define with-cons-load-path
      (lambda (_thunk120413_ . _paths120414_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk120413_
                        _paths120414_))
               _paths120414_)))
    (define with-cons-library-load-path
      (lambda (_thunk120406_ . _paths120407_)
        (let ((_current120409_ (current-module-library-path))
              (_paths120410_ (map path-expand _paths120407_)))
          (let ((__tmp125050 (lambda () (_thunk120406_)))
                (__tmp125049 (append _paths120410_ _current120409_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125050
             current-module-library-path
             __tmp125049)))))
    (define with-cons-expander-load-path
      (lambda (_thunk120399_ . _paths120400_)
        (let ((_current120402_ (gx#current-expander-module-library-path))
              (_paths120403_ (map path-expand _paths120400_)))
          (let ((__tmp125052 (lambda () (_thunk120399_)))
                (__tmp125051 (append _paths120403_ _current120402_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125052
             gx#current-expander-module-library-path
             __tmp125051)))))
    (define __expand-source
      (lambda (_src120385_)
        (letrec ((_expand120387_
                  (lambda (_src120397_)
                    (let ((__tmp125053
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src120397_)))))
                      (declare (not safe))
                      (__compile-top __tmp125053))))
                 (_no-expand120388_
                  (lambda (_src120393_)
                    (if (__loading-scheme-source)
                        _src120393_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src120393_))
                            (let ((_code120395_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src120393_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code120395_))
                                  (if (let ((__tmp125054
                                             (let ()
                                               (declare (not safe))
                                               (##car _code120395_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp125054))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code120395_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e120390_
                 (let ()
                   (declare (not safe))
                   (_no-expand120388_ _src120385_))))
            (if _$e120390_
                _$e120390_
                (let () (declare (not safe)) (_expand120387_ _src120385_)))))))
    (define __macro-descr
      (lambda (_src120371_ _def-syntax?120372_)
        (letrec ((_fail!120374_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src120371_))))
                 (_make-descr120375_
                  (lambda (_size120379_)
                    (let ((_expander120382_
                           (let ((__tmp125055
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src120371_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp125055
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander120382_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?120372_
                             _size120379_
                             _expander120382_
                             _src120371_))
                          (let () (declare (not safe)) (_fail!120374_)))))))
          (if _def-syntax?120372_
              (let () (declare (not safe)) (_make-descr120375_ '-1))
              (let ((_code120377_
                     (let ()
                       (declare (not safe))
                       (##source-code _src120371_))))
                (if (and (let () (declare (not safe)) (##pair? _code120377_))
                         (let ((__tmp125059
                                (let ((__tmp125060
                                       (let ((__tmp125061
                                              (let ()
                                                (declare (not safe))
                                                (##car _code120377_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp125061
                                          _src120371_))))
                                  (declare (not safe))
                                  (##source-code __tmp125060))))
                           (declare (not safe))
                           (##memq __tmp125059 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src120371_ _src120371_ '-3))
                      (let ((__tmp125056
                             (let ((__tmp125057
                                    (let ((__tmp125058
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code120377_))))
                                      (declare (not safe))
                                      (##sourcify __tmp125058 _src120371_))))
                               (declare (not safe))
                               (##form-size __tmp125057))))
                        (declare (not safe))
                        (_make-descr120375_ __tmp125056)))
                    (let () (declare (not safe)) (_fail!120374_))))))))
    (define __source->syntax
      (lambda (_src120365_)
        (let _recur120367_ ((_e120369_ _src120365_))
          (if (let () (declare (not safe)) (##source? _e120369_))
              (let ((__tmp125069
                     (let ((__tmp125070
                            (let ()
                              (declare (not safe))
                              (##source-code _e120369_))))
                       (declare (not safe))
                       (_recur120367_ __tmp125070)))
                    (__tmp125068
                     (let () (declare (not safe)) (##source-locat _e120369_))))
                (declare (not safe))
                (##structure AST::t __tmp125069 __tmp125068))
              (if (let () (declare (not safe)) (pair? _e120369_))
                  (let ((__tmp125066
                         (let ((__tmp125067
                                (let ()
                                  (declare (not safe))
                                  (##car _e120369_))))
                           (declare (not safe))
                           (_recur120367_ __tmp125067)))
                        (__tmp125064
                         (let ((__tmp125065
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120369_))))
                           (declare (not safe))
                           (_recur120367_ __tmp125065))))
                    (declare (not safe))
                    (cons __tmp125066 __tmp125064))
                  (if (let () (declare (not safe)) (vector? _e120369_))
                      (vector-map _recur120367_ _e120369_)
                      (if (let () (declare (not safe)) (box? _e120369_))
                          (let ((__tmp125062
                                 (let ((__tmp125063 (unbox _e120369_)))
                                   (declare (not safe))
                                   (_recur120367_ __tmp125063))))
                            (declare (not safe))
                            (box __tmp125062))
                          _e120369_)))))))
    (define __compile-top-source
      (lambda (_stx120363_)
        (let ((__tmp125071
               (let () (declare (not safe)) (__compile-top _stx120363_))))
          (declare (not safe))
          (cons '__noexpand: __tmp125071))))
    (define __compile-top
      (lambda (_stx120361_)
        (let ((__tmp125072 (gx#core-compile-top-syntax _stx120361_)))
          (declare (not safe))
          (__compile __tmp125072))))
    (define __eval-import
      (lambda (_in120342_)
        (letrec* ((_mods120344_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1120345_
                   (lambda (_in120352_ _phi120353_)
                     (if (gx#module-import? _in120352_)
                         (let ((_iphi120355_
                                (fx+ _phi120353_
                                     (gx#module-import-phi _in120352_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi120355_))
                               (let ((__tmp125074
                                      (gx#module-export-context
                                       (gx#module-import-source _in120352_))))
                                 (declare (not safe))
                                 (_eval1120346_ __tmp125074))
                               '#!void))
                         (if (gx#module-context? _in120352_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi120353_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1120346_ _in120352_))
                                 '#!void)
                             (if (gx#import-set? _in120352_)
                                 (let ((_iphi120357_
                                        (fx+ _phi120353_
                                             (gx#import-set-phi _in120352_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi120357_))
                                       (let ((__tmp125073
                                              (gx#import-set-source
                                               _in120352_)))
                                         (declare (not safe))
                                         (_eval1120346_ __tmp125073))
                                       (if (fxpositive? _iphi120357_)
                                           (for-each
                                            (lambda (_in120359_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1120345_
                                                 _in120359_
                                                 _iphi120357_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in120352_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in120352_))))))
                  (_eval1120346_
                   (lambda (_ctx120350_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods120344_ _ctx120350_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods120344_ _ctx120350_ '#t))
                           (__eval-module _ctx120350_))))))
          (if (let () (declare (not safe)) (pair? _in120342_))
              (for-each
               (lambda (_in120348_)
                 (let () (declare (not safe)) (_import1120345_ _in120348_ '0)))
               _in120342_)
              (let () (declare (not safe)) (_import1120345_ _in120342_ '0))))))
    (define __eval-module
      (lambda (_obj120335_)
        (let* ((_key120337_
                (if (gx#module-context? _obj120335_)
                    (gx#module-context-path _obj120335_)
                    _obj120335_))
               (_$e120339_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key120337_ '#f))))
          (if _$e120339_
              (values _$e120339_)
              (gx#core-eval-module _obj120335_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules120270_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home120272_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir120274_ (path-expand '"lib" _home120272_))
                     (_userpath120276_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath120278_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir120274_ '()))
                          (let ((__tmp125075
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir120274_ '()))))
                            (declare (not safe))
                            (cons _userpath120276_ __tmp125075))))
                     (_loadpath120287_
                      (let ((_$e120280_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e120280_
                            ((lambda (_envvar120283_)
                               (append (let ((__tmp125077
                                              (lambda (_x120285_)
                                                (let ((__tmp125078
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x120285_))))
                                                  (declare (not safe))
                                                  (not __tmp125078))))
                                             (__tmp125076
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar120283_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp125077 __tmp125076))
                                       _loadpath120278_))
                             _$e120280_)
                            _loadpath120278_))))
                (current-module-library-path _loadpath120287_))
              (let* ((_registry-entry120292_
                      (lambda (_m120290_)
                        (let ()
                          (declare (not safe))
                          (cons _m120290_ 'builtin))))
                     (_module-registry120332_
                      (let _lp120294_ ((_rest120296_ _builtin-modules120270_)
                                       (_registry120297_ '()))
                        (let* ((_rest120298120306_ _rest120296_)
                               (_else120300120314_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry120297_))))
                               (_K120302120320_
                                (lambda (_rest120317_ _mod120318_)
                                  (let ((__tmp125079
                                         (let ((__tmp125083
                                                (let ((__tmp125084
                                                       (string-append
                                                        _mod120318_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry120292_
                                                   __tmp125084)))
                                               (__tmp125080
                                                (let ((__tmp125081
                                                       (let ((__tmp125082
                                                              (string-append
                                                               _mod120318_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry120292_
                                                          __tmp125082))))
                                                  (declare (not safe))
                                                  (cons __tmp125081
                                                        _registry120297_))))
                                           (declare (not safe))
                                           (cons __tmp125083 __tmp125080))))
                                    (declare (not safe))
                                    (_lp120294_ _rest120317_ __tmp125079)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest120298120306_))
                              (let ((_hd120303120323_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest120298120306_)))
                                    (_tl120304120325_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest120298120306_))))
                                (let* ((_mod120328_ _hd120303120323_)
                                       (_rest120330_ _tl120304120325_))
                                  (declare (not safe))
                                  (_K120302120320_ _rest120330_ _mod120328_)))
                              (let ()
                                (declare (not safe))
                                (_else120300120314_)))))))
                (current-module-registry _module-registry120332_))
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
