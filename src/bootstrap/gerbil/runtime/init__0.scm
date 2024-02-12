(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707767843)
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
        (letrec* ((_+readtable+120493_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core120495_ (gx#import-module ':gerbil/core))
                 (_pre120497_ (gx#make-prelude-context _core120495_)))
            (gx#current-expander-module-prelude _pre120497_)
            (gx#core-bind-root-syntax! ':<core> _pre120497_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port120500_)
             (input-port-readtable-set! _port120500_ _+readtable+120493_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port120502_)
             (output-port-readtable-set!
              _port120502_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port120502_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline120490_) '#!void))
    (define load-scheme
      (lambda (_path120485_)
        (let ((__tmp125072
               (lambda ()
                 (let ((__tmp125073 (lambda _args120488_ '#f)))
                   (declare (not safe))
                   (##load _path120485_ __tmp125073 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp125072
           __loading-scheme-source
           _path120485_))))
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
      (lambda _paths120480_
        (apply add-library-load-path _paths120480_)
        (apply add-expander-load-path _paths120480_)))
    (define add-library-load-path
      (lambda _paths120469_
        (let* ((_current120471_ (current-module-library-path))
               (_paths120473_ (map path-expand _paths120469_))
               (_paths120477_
                (let ((__tmp125074
                       (lambda (_x120475_)
                         (let ((__tmp125075
                                (member _x120475_ _current120471_)))
                           (declare (not safe))
                           (not __tmp125075)))))
                  (declare (not safe))
                  (filter __tmp125074 _paths120473_))))
          (current-module-library-path
           (append _current120471_ _paths120477_)))))
    (define add-expander-load-path
      (lambda _paths120458_
        (let* ((_current120460_ (gx#current-expander-module-library-path))
               (_paths120462_ (map path-expand _paths120458_))
               (_paths120466_
                (let ((__tmp125076
                       (lambda (_x120464_)
                         (let ((__tmp125077
                                (member _x120464_ _current120460_)))
                           (declare (not safe))
                           (not __tmp125077)))))
                  (declare (not safe))
                  (filter __tmp125076 _paths120462_))))
          (gx#current-expander-module-library-path
           (append _current120460_ _paths120466_)))))
    (define cons-load-path
      (lambda _paths120456_
        (apply cons-library-load-path _paths120456_)
        (apply cons-expander-load-path _paths120456_)))
    (define cons-library-load-path
      (lambda _paths120451_
        (let ((_current120453_ (current-module-library-path))
              (_paths120454_ (map path-expand _paths120451_)))
          (current-module-library-path
           (append _paths120454_ _current120453_)))))
    (define cons-expander-load-path
      (lambda _paths120446_
        (let ((_current120448_ (gx#current-expander-module-library-path))
              (_paths120449_ (map path-expand _paths120446_)))
          (gx#current-expander-module-library-path
           (append _paths120449_ _current120448_)))))
    (define with-cons-load-path
      (lambda (_thunk120442_ . _paths120443_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk120442_
                        _paths120443_))
               _paths120443_)))
    (define with-cons-library-load-path
      (lambda (_thunk120435_ . _paths120436_)
        (let ((_current120438_ (current-module-library-path))
              (_paths120439_ (map path-expand _paths120436_)))
          (let ((__tmp125079 (lambda () (_thunk120435_)))
                (__tmp125078 (append _paths120439_ _current120438_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125079
             current-module-library-path
             __tmp125078)))))
    (define with-cons-expander-load-path
      (lambda (_thunk120428_ . _paths120429_)
        (let ((_current120431_ (gx#current-expander-module-library-path))
              (_paths120432_ (map path-expand _paths120429_)))
          (let ((__tmp125081 (lambda () (_thunk120428_)))
                (__tmp125080 (append _paths120432_ _current120431_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125081
             gx#current-expander-module-library-path
             __tmp125080)))))
    (define __expand-source
      (lambda (_src120414_)
        (letrec ((_expand120416_
                  (lambda (_src120426_)
                    (let ((__tmp125082
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src120426_)))))
                      (declare (not safe))
                      (__compile-top __tmp125082))))
                 (_no-expand120417_
                  (lambda (_src120422_)
                    (if (__loading-scheme-source)
                        _src120422_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src120422_))
                            (let ((_code120424_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src120422_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code120424_))
                                  (if (let ((__tmp125083
                                             (let ()
                                               (declare (not safe))
                                               (##car _code120424_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp125083))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code120424_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e120419_
                 (let ()
                   (declare (not safe))
                   (_no-expand120417_ _src120414_))))
            (if _$e120419_
                _$e120419_
                (let () (declare (not safe)) (_expand120416_ _src120414_)))))))
    (define __macro-descr
      (lambda (_src120400_ _def-syntax?120401_)
        (letrec ((_fail!120403_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src120400_))))
                 (_make-descr120404_
                  (lambda (_size120408_)
                    (let ((_expander120411_
                           (let ((__tmp125084
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src120400_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp125084
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander120411_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?120401_
                             _size120408_
                             _expander120411_
                             _src120400_))
                          (let () (declare (not safe)) (_fail!120403_)))))))
          (if _def-syntax?120401_
              (let () (declare (not safe)) (_make-descr120404_ '-1))
              (let ((_code120406_
                     (let ()
                       (declare (not safe))
                       (##source-code _src120400_))))
                (if (and (let () (declare (not safe)) (##pair? _code120406_))
                         (let ((__tmp125088
                                (let ((__tmp125089
                                       (let ((__tmp125090
                                              (let ()
                                                (declare (not safe))
                                                (##car _code120406_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp125090
                                          _src120400_))))
                                  (declare (not safe))
                                  (##source-code __tmp125089))))
                           (declare (not safe))
                           (##memq __tmp125088 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src120400_ _src120400_ '-3))
                      (let ((__tmp125085
                             (let ((__tmp125086
                                    (let ((__tmp125087
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code120406_))))
                                      (declare (not safe))
                                      (##sourcify __tmp125087 _src120400_))))
                               (declare (not safe))
                               (##form-size __tmp125086))))
                        (declare (not safe))
                        (_make-descr120404_ __tmp125085)))
                    (let () (declare (not safe)) (_fail!120403_))))))))
    (define __source->syntax
      (lambda (_src120394_)
        (let _recur120396_ ((_e120398_ _src120394_))
          (if (let () (declare (not safe)) (##source? _e120398_))
              (let ((__tmp125098
                     (let ((__tmp125099
                            (let ()
                              (declare (not safe))
                              (##source-code _e120398_))))
                       (declare (not safe))
                       (_recur120396_ __tmp125099)))
                    (__tmp125097
                     (let () (declare (not safe)) (##source-locat _e120398_))))
                (declare (not safe))
                (##structure AST::t __tmp125098 __tmp125097))
              (if (let () (declare (not safe)) (pair? _e120398_))
                  (let ((__tmp125095
                         (let ((__tmp125096
                                (let ()
                                  (declare (not safe))
                                  (##car _e120398_))))
                           (declare (not safe))
                           (_recur120396_ __tmp125096)))
                        (__tmp125093
                         (let ((__tmp125094
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120398_))))
                           (declare (not safe))
                           (_recur120396_ __tmp125094))))
                    (declare (not safe))
                    (cons __tmp125095 __tmp125093))
                  (if (let () (declare (not safe)) (vector? _e120398_))
                      (vector-map _recur120396_ _e120398_)
                      (if (let () (declare (not safe)) (box? _e120398_))
                          (let ((__tmp125091
                                 (let ((__tmp125092 (unbox _e120398_)))
                                   (declare (not safe))
                                   (_recur120396_ __tmp125092))))
                            (declare (not safe))
                            (box __tmp125091))
                          _e120398_)))))))
    (define __compile-top-source
      (lambda (_stx120392_)
        (let ((__tmp125100
               (let () (declare (not safe)) (__compile-top _stx120392_))))
          (declare (not safe))
          (cons '__noexpand: __tmp125100))))
    (define __compile-top
      (lambda (_stx120390_)
        (let ((__tmp125101 (gx#core-compile-top-syntax _stx120390_)))
          (declare (not safe))
          (__compile __tmp125101))))
    (define __eval-import
      (lambda (_in120371_)
        (letrec* ((_mods120373_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1120374_
                   (lambda (_in120381_ _phi120382_)
                     (if (gx#module-import? _in120381_)
                         (let ((_iphi120384_
                                (fx+ _phi120382_
                                     (gx#module-import-phi _in120381_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi120384_))
                               (let ((__tmp125103
                                      (gx#module-export-context
                                       (gx#module-import-source _in120381_))))
                                 (declare (not safe))
                                 (_eval1120375_ __tmp125103))
                               '#!void))
                         (if (gx#module-context? _in120381_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi120382_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1120375_ _in120381_))
                                 '#!void)
                             (if (gx#import-set? _in120381_)
                                 (let ((_iphi120386_
                                        (fx+ _phi120382_
                                             (gx#import-set-phi _in120381_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi120386_))
                                       (let ((__tmp125102
                                              (gx#import-set-source
                                               _in120381_)))
                                         (declare (not safe))
                                         (_eval1120375_ __tmp125102))
                                       (if (fxpositive? _iphi120386_)
                                           (for-each
                                            (lambda (_in120388_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1120374_
                                                 _in120388_
                                                 _iphi120386_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in120381_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in120381_))))))
                  (_eval1120375_
                   (lambda (_ctx120379_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods120373_ _ctx120379_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods120373_ _ctx120379_ '#t))
                           (__eval-module _ctx120379_))))))
          (if (let () (declare (not safe)) (pair? _in120371_))
              (for-each
               (lambda (_in120377_)
                 (let () (declare (not safe)) (_import1120374_ _in120377_ '0)))
               _in120371_)
              (let () (declare (not safe)) (_import1120374_ _in120371_ '0))))))
    (define __eval-module
      (lambda (_obj120364_)
        (let* ((_key120366_
                (if (gx#module-context? _obj120364_)
                    (gx#module-context-path _obj120364_)
                    _obj120364_))
               (_$e120368_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key120366_ '#f))))
          (if _$e120368_
              (values _$e120368_)
              (gx#core-eval-module _obj120364_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules120299_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home120301_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir120303_ (path-expand '"lib" _home120301_))
                     (_userpath120305_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath120307_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir120303_ '()))
                          (let ((__tmp125104
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir120303_ '()))))
                            (declare (not safe))
                            (cons _userpath120305_ __tmp125104))))
                     (_loadpath120316_
                      (let ((_$e120309_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e120309_
                            ((lambda (_envvar120312_)
                               (append (let ((__tmp125106
                                              (lambda (_x120314_)
                                                (let ((__tmp125107
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x120314_))))
                                                  (declare (not safe))
                                                  (not __tmp125107))))
                                             (__tmp125105
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar120312_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp125106 __tmp125105))
                                       _loadpath120307_))
                             _$e120309_)
                            _loadpath120307_))))
                (current-module-library-path _loadpath120316_))
              (let* ((_registry-entry120321_
                      (lambda (_m120319_)
                        (let ()
                          (declare (not safe))
                          (cons _m120319_ 'builtin))))
                     (_module-registry120361_
                      (let _lp120323_ ((_rest120325_ _builtin-modules120299_)
                                       (_registry120326_ '()))
                        (let* ((_rest120327120335_ _rest120325_)
                               (_else120329120343_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry120326_))))
                               (_K120331120349_
                                (lambda (_rest120346_ _mod120347_)
                                  (let ((__tmp125108
                                         (let ((__tmp125112
                                                (let ((__tmp125113
                                                       (string-append
                                                        _mod120347_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry120321_
                                                   __tmp125113)))
                                               (__tmp125109
                                                (let ((__tmp125110
                                                       (let ((__tmp125111
                                                              (string-append
                                                               _mod120347_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry120321_
                                                          __tmp125111))))
                                                  (declare (not safe))
                                                  (cons __tmp125110
                                                        _registry120326_))))
                                           (declare (not safe))
                                           (cons __tmp125112 __tmp125109))))
                                    (declare (not safe))
                                    (_lp120323_ _rest120346_ __tmp125108)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest120327120335_))
                              (let ((_hd120332120352_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest120327120335_)))
                                    (_tl120333120354_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest120327120335_))))
                                (let* ((_mod120357_ _hd120332120352_)
                                       (_rest120359_ _tl120333120354_))
                                  (declare (not safe))
                                  (_K120331120349_ _rest120359_ _mod120357_)))
                              (let ()
                                (declare (not safe))
                                (_else120329120343_)))))))
                (current-module-registry _module-registry120361_))
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
