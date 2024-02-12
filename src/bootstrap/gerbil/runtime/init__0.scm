(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707738031)
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
        (letrec* ((_+readtable+120465_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core120467_ (gx#import-module ':gerbil/core))
                 (_pre120469_ (gx#make-prelude-context _core120467_)))
            (gx#current-expander-module-prelude _pre120469_)
            (gx#core-bind-root-syntax! ':<core> _pre120469_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port120472_)
             (input-port-readtable-set! _port120472_ _+readtable+120465_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port120474_)
             (output-port-readtable-set!
              _port120474_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port120474_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline120462_) '#!void))
    (define load-scheme
      (lambda (_path120457_)
        (let ((__tmp125044
               (lambda ()
                 (let ((__tmp125045 (lambda _args120460_ '#f)))
                   (declare (not safe))
                   (##load _path120457_ __tmp125045 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp125044
           __loading-scheme-source
           _path120457_))))
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
      (lambda _paths120452_
        (apply add-library-load-path _paths120452_)
        (apply add-expander-load-path _paths120452_)))
    (define add-library-load-path
      (lambda _paths120441_
        (let* ((_current120443_ (current-module-library-path))
               (_paths120445_ (map path-expand _paths120441_))
               (_paths120449_
                (let ((__tmp125046
                       (lambda (_x120447_)
                         (let ((__tmp125047
                                (member _x120447_ _current120443_)))
                           (declare (not safe))
                           (not __tmp125047)))))
                  (declare (not safe))
                  (filter __tmp125046 _paths120445_))))
          (current-module-library-path
           (append _current120443_ _paths120449_)))))
    (define add-expander-load-path
      (lambda _paths120430_
        (let* ((_current120432_ (gx#current-expander-module-library-path))
               (_paths120434_ (map path-expand _paths120430_))
               (_paths120438_
                (let ((__tmp125048
                       (lambda (_x120436_)
                         (let ((__tmp125049
                                (member _x120436_ _current120432_)))
                           (declare (not safe))
                           (not __tmp125049)))))
                  (declare (not safe))
                  (filter __tmp125048 _paths120434_))))
          (gx#current-expander-module-library-path
           (append _current120432_ _paths120438_)))))
    (define cons-load-path
      (lambda _paths120428_
        (apply cons-library-load-path _paths120428_)
        (apply cons-expander-load-path _paths120428_)))
    (define cons-library-load-path
      (lambda _paths120423_
        (let ((_current120425_ (current-module-library-path))
              (_paths120426_ (map path-expand _paths120423_)))
          (current-module-library-path
           (append _paths120426_ _current120425_)))))
    (define cons-expander-load-path
      (lambda _paths120418_
        (let ((_current120420_ (gx#current-expander-module-library-path))
              (_paths120421_ (map path-expand _paths120418_)))
          (gx#current-expander-module-library-path
           (append _paths120421_ _current120420_)))))
    (define with-cons-load-path
      (lambda (_thunk120414_ . _paths120415_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk120414_
                        _paths120415_))
               _paths120415_)))
    (define with-cons-library-load-path
      (lambda (_thunk120407_ . _paths120408_)
        (let ((_current120410_ (current-module-library-path))
              (_paths120411_ (map path-expand _paths120408_)))
          (let ((__tmp125051 (lambda () (_thunk120407_)))
                (__tmp125050 (append _paths120411_ _current120410_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125051
             current-module-library-path
             __tmp125050)))))
    (define with-cons-expander-load-path
      (lambda (_thunk120400_ . _paths120401_)
        (let ((_current120403_ (gx#current-expander-module-library-path))
              (_paths120404_ (map path-expand _paths120401_)))
          (let ((__tmp125053 (lambda () (_thunk120400_)))
                (__tmp125052 (append _paths120404_ _current120403_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125053
             gx#current-expander-module-library-path
             __tmp125052)))))
    (define __expand-source
      (lambda (_src120386_)
        (letrec ((_expand120388_
                  (lambda (_src120398_)
                    (let ((__tmp125054
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src120398_)))))
                      (declare (not safe))
                      (__compile-top __tmp125054))))
                 (_no-expand120389_
                  (lambda (_src120394_)
                    (if (__loading-scheme-source)
                        _src120394_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src120394_))
                            (let ((_code120396_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src120394_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code120396_))
                                  (if (let ((__tmp125055
                                             (let ()
                                               (declare (not safe))
                                               (##car _code120396_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp125055))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code120396_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e120391_
                 (let ()
                   (declare (not safe))
                   (_no-expand120389_ _src120386_))))
            (if _$e120391_
                _$e120391_
                (let () (declare (not safe)) (_expand120388_ _src120386_)))))))
    (define __macro-descr
      (lambda (_src120372_ _def-syntax?120373_)
        (letrec ((_fail!120375_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src120372_))))
                 (_make-descr120376_
                  (lambda (_size120380_)
                    (let ((_expander120383_
                           (let ((__tmp125056
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src120372_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp125056
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander120383_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?120373_
                             _size120380_
                             _expander120383_
                             _src120372_))
                          (let () (declare (not safe)) (_fail!120375_)))))))
          (if _def-syntax?120373_
              (let () (declare (not safe)) (_make-descr120376_ '-1))
              (let ((_code120378_
                     (let ()
                       (declare (not safe))
                       (##source-code _src120372_))))
                (if (and (let () (declare (not safe)) (##pair? _code120378_))
                         (let ((__tmp125060
                                (let ((__tmp125061
                                       (let ((__tmp125062
                                              (let ()
                                                (declare (not safe))
                                                (##car _code120378_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp125062
                                          _src120372_))))
                                  (declare (not safe))
                                  (##source-code __tmp125061))))
                           (declare (not safe))
                           (##memq __tmp125060 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src120372_ _src120372_ '-3))
                      (let ((__tmp125057
                             (let ((__tmp125058
                                    (let ((__tmp125059
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code120378_))))
                                      (declare (not safe))
                                      (##sourcify __tmp125059 _src120372_))))
                               (declare (not safe))
                               (##form-size __tmp125058))))
                        (declare (not safe))
                        (_make-descr120376_ __tmp125057)))
                    (let () (declare (not safe)) (_fail!120375_))))))))
    (define __source->syntax
      (lambda (_src120366_)
        (let _recur120368_ ((_e120370_ _src120366_))
          (if (let () (declare (not safe)) (##source? _e120370_))
              (let ((__tmp125070
                     (let ((__tmp125071
                            (let ()
                              (declare (not safe))
                              (##source-code _e120370_))))
                       (declare (not safe))
                       (_recur120368_ __tmp125071)))
                    (__tmp125069
                     (let () (declare (not safe)) (##source-locat _e120370_))))
                (declare (not safe))
                (##structure AST::t __tmp125070 __tmp125069))
              (if (let () (declare (not safe)) (pair? _e120370_))
                  (let ((__tmp125067
                         (let ((__tmp125068
                                (let ()
                                  (declare (not safe))
                                  (##car _e120370_))))
                           (declare (not safe))
                           (_recur120368_ __tmp125068)))
                        (__tmp125065
                         (let ((__tmp125066
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120370_))))
                           (declare (not safe))
                           (_recur120368_ __tmp125066))))
                    (declare (not safe))
                    (cons __tmp125067 __tmp125065))
                  (if (let () (declare (not safe)) (vector? _e120370_))
                      (vector-map _recur120368_ _e120370_)
                      (if (let () (declare (not safe)) (box? _e120370_))
                          (let ((__tmp125063
                                 (let ((__tmp125064 (unbox _e120370_)))
                                   (declare (not safe))
                                   (_recur120368_ __tmp125064))))
                            (declare (not safe))
                            (box __tmp125063))
                          _e120370_)))))))
    (define __compile-top-source
      (lambda (_stx120364_)
        (let ((__tmp125072
               (let () (declare (not safe)) (__compile-top _stx120364_))))
          (declare (not safe))
          (cons '__noexpand: __tmp125072))))
    (define __compile-top
      (lambda (_stx120362_)
        (let ((__tmp125073 (gx#core-compile-top-syntax _stx120362_)))
          (declare (not safe))
          (__compile __tmp125073))))
    (define __eval-import
      (lambda (_in120343_)
        (letrec* ((_mods120345_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1120346_
                   (lambda (_in120353_ _phi120354_)
                     (if (gx#module-import? _in120353_)
                         (let ((_iphi120356_
                                (fx+ _phi120354_
                                     (gx#module-import-phi _in120353_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi120356_))
                               (let ((__tmp125075
                                      (gx#module-export-context
                                       (gx#module-import-source _in120353_))))
                                 (declare (not safe))
                                 (_eval1120347_ __tmp125075))
                               '#!void))
                         (if (gx#module-context? _in120353_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi120354_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1120347_ _in120353_))
                                 '#!void)
                             (if (gx#import-set? _in120353_)
                                 (let ((_iphi120358_
                                        (fx+ _phi120354_
                                             (gx#import-set-phi _in120353_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi120358_))
                                       (let ((__tmp125074
                                              (gx#import-set-source
                                               _in120353_)))
                                         (declare (not safe))
                                         (_eval1120347_ __tmp125074))
                                       (if (fxpositive? _iphi120358_)
                                           (for-each
                                            (lambda (_in120360_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1120346_
                                                 _in120360_
                                                 _iphi120358_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in120353_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in120353_))))))
                  (_eval1120347_
                   (lambda (_ctx120351_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods120345_ _ctx120351_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods120345_ _ctx120351_ '#t))
                           (__eval-module _ctx120351_))))))
          (if (let () (declare (not safe)) (pair? _in120343_))
              (for-each
               (lambda (_in120349_)
                 (let () (declare (not safe)) (_import1120346_ _in120349_ '0)))
               _in120343_)
              (let () (declare (not safe)) (_import1120346_ _in120343_ '0))))))
    (define __eval-module
      (lambda (_obj120336_)
        (let* ((_key120338_
                (if (gx#module-context? _obj120336_)
                    (gx#module-context-path _obj120336_)
                    _obj120336_))
               (_$e120340_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key120338_ '#f))))
          (if _$e120340_
              (values _$e120340_)
              (gx#core-eval-module _obj120336_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules120271_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home120273_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir120275_ (path-expand '"lib" _home120273_))
                     (_userpath120277_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath120279_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir120275_ '()))
                          (let ((__tmp125076
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir120275_ '()))))
                            (declare (not safe))
                            (cons _userpath120277_ __tmp125076))))
                     (_loadpath120288_
                      (let ((_$e120281_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e120281_
                            ((lambda (_envvar120284_)
                               (append (let ((__tmp125078
                                              (lambda (_x120286_)
                                                (let ((__tmp125079
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x120286_))))
                                                  (declare (not safe))
                                                  (not __tmp125079))))
                                             (__tmp125077
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar120284_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp125078 __tmp125077))
                                       _loadpath120279_))
                             _$e120281_)
                            _loadpath120279_))))
                (current-module-library-path _loadpath120288_))
              (let* ((_registry-entry120293_
                      (lambda (_m120291_)
                        (let ()
                          (declare (not safe))
                          (cons _m120291_ 'builtin))))
                     (_module-registry120333_
                      (let _lp120295_ ((_rest120297_ _builtin-modules120271_)
                                       (_registry120298_ '()))
                        (let* ((_rest120299120307_ _rest120297_)
                               (_else120301120315_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry120298_))))
                               (_K120303120321_
                                (lambda (_rest120318_ _mod120319_)
                                  (let ((__tmp125080
                                         (let ((__tmp125084
                                                (let ((__tmp125085
                                                       (string-append
                                                        _mod120319_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry120293_
                                                   __tmp125085)))
                                               (__tmp125081
                                                (let ((__tmp125082
                                                       (let ((__tmp125083
                                                              (string-append
                                                               _mod120319_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry120293_
                                                          __tmp125083))))
                                                  (declare (not safe))
                                                  (cons __tmp125082
                                                        _registry120298_))))
                                           (declare (not safe))
                                           (cons __tmp125084 __tmp125081))))
                                    (declare (not safe))
                                    (_lp120295_ _rest120318_ __tmp125080)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest120299120307_))
                              (let ((_hd120304120324_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest120299120307_)))
                                    (_tl120305120326_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest120299120307_))))
                                (let* ((_mod120329_ _hd120304120324_)
                                       (_rest120331_ _tl120305120326_))
                                  (declare (not safe))
                                  (_K120303120321_ _rest120331_ _mod120329_)))
                              (let ()
                                (declare (not safe))
                                (_else120301120315_)))))))
                (current-module-registry _module-registry120333_))
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
