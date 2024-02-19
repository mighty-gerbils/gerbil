(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708334574)
  (begin
    (define __loading-scheme-source (make-parameter '#f))
    (define __init-gx!
      (lambda ()
        (gx#current-expander-marks '())
        (gx#current-expander-phi '0)
        (gx#current-expander-context (gx#make-top-context))
        (gx#current-expander-module-library-path (current-module-library-path))
        (gx#current-expander-module-registry
         (let () (declare (not safe)) (make-hash-table)))
        (gx#current-expander-module-import gx#core-import-module)
        (gx#current-expander-module-eval gx#core-eval-module)
        (gx#current-expander-compile __compile-top)
        (gx#current-expander-eval ##eval)
        (gx#core-bind-root-syntax! ':<root> (gx#make-prelude-context '#f) '#t)
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)))
    (define __load-gxi
      (lambda ()
        (letrec* ((_+readtable+136049_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core136051_ (gx#import-module ':gerbil/core))
                 (_pre136053_ (gx#make-prelude-context _core136051_)))
            (gx#current-expander-module-prelude _pre136053_)
            (gx#core-bind-root-syntax! ':<core> _pre136053_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port136056_)
             (input-port-readtable-set! _port136056_ _+readtable+136049_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port136058_)
             (output-port-readtable-set!
              _port136058_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port136058_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline136046_) '#!void))
    (define load-scheme
      (lambda (_path136041_)
        (let ((__tmp140127
               (lambda ()
                 (let ((__tmp140128 (lambda _args136044_ '#f)))
                   (declare (not safe))
                   (##load _path136041_ __tmp140128 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp140127
           __loading-scheme-source
           _path136041_))))
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
      (lambda _paths136036_
        (apply add-library-load-path _paths136036_)
        (apply add-expander-load-path _paths136036_)))
    (define add-library-load-path
      (lambda _paths136025_
        (let* ((_current136027_ (current-module-library-path))
               (_paths136029_ (map path-expand _paths136025_))
               (_paths136033_
                (let ((__tmp140129
                       (lambda (_x136031_)
                         (let ((__tmp140130
                                (member _x136031_ _current136027_)))
                           (declare (not safe))
                           (not __tmp140130)))))
                  (declare (not safe))
                  (filter __tmp140129 _paths136029_))))
          (current-module-library-path
           (append _current136027_ _paths136033_)))))
    (define add-expander-load-path
      (lambda _paths136014_
        (let* ((_current136016_ (gx#current-expander-module-library-path))
               (_paths136018_ (map path-expand _paths136014_))
               (_paths136022_
                (let ((__tmp140131
                       (lambda (_x136020_)
                         (let ((__tmp140132
                                (member _x136020_ _current136016_)))
                           (declare (not safe))
                           (not __tmp140132)))))
                  (declare (not safe))
                  (filter __tmp140131 _paths136018_))))
          (gx#current-expander-module-library-path
           (append _current136016_ _paths136022_)))))
    (define cons-load-path
      (lambda _paths136012_
        (apply cons-library-load-path _paths136012_)
        (apply cons-expander-load-path _paths136012_)))
    (define cons-library-load-path
      (lambda _paths136007_
        (let ((_current136009_ (current-module-library-path))
              (_paths136010_ (map path-expand _paths136007_)))
          (current-module-library-path
           (append _paths136010_ _current136009_)))))
    (define cons-expander-load-path
      (lambda _paths136002_
        (let ((_current136004_ (gx#current-expander-module-library-path))
              (_paths136005_ (map path-expand _paths136002_)))
          (gx#current-expander-module-library-path
           (append _paths136005_ _current136004_)))))
    (define with-cons-load-path
      (lambda (_thunk135998_ . _paths135999_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk135998_
                        _paths135999_))
               _paths135999_)))
    (define with-cons-library-load-path
      (lambda (_thunk135991_ . _paths135992_)
        (let ((_current135994_ (current-module-library-path))
              (_paths135995_ (map path-expand _paths135992_)))
          (let ((__tmp140134 (lambda () (_thunk135991_)))
                (__tmp140133 (append _paths135995_ _current135994_)))
            (declare (not safe))
            (call-with-parameters
             __tmp140134
             current-module-library-path
             __tmp140133)))))
    (define with-cons-expander-load-path
      (lambda (_thunk135984_ . _paths135985_)
        (let ((_current135987_ (gx#current-expander-module-library-path))
              (_paths135988_ (map path-expand _paths135985_)))
          (let ((__tmp140136 (lambda () (_thunk135984_)))
                (__tmp140135 (append _paths135988_ _current135987_)))
            (declare (not safe))
            (call-with-parameters
             __tmp140136
             gx#current-expander-module-library-path
             __tmp140135)))))
    (define __expand-source
      (lambda (_src135970_)
        (letrec ((_expand135972_
                  (lambda (_src135982_)
                    (let ((__tmp140137
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src135982_)))))
                      (declare (not safe))
                      (__compile-top __tmp140137))))
                 (_no-expand135973_
                  (lambda (_src135978_)
                    (if (__loading-scheme-source)
                        _src135978_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src135978_))
                            (let ((_code135980_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src135978_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code135980_))
                                  (if (let ((__tmp140138
                                             (let ()
                                               (declare (not safe))
                                               (##car _code135980_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp140138))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code135980_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e135975_
                 (let ()
                   (declare (not safe))
                   (_no-expand135973_ _src135970_))))
            (if _$e135975_
                _$e135975_
                (let () (declare (not safe)) (_expand135972_ _src135970_)))))))
    (define __macro-descr
      (lambda (_src135956_ _def-syntax?135957_)
        (letrec ((_fail!135959_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src135956_))))
                 (_make-descr135960_
                  (lambda (_size135964_)
                    (let ((_expander135967_
                           (let ((__tmp140139
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src135956_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp140139
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander135967_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?135957_
                             _size135964_
                             _expander135967_
                             _src135956_))
                          (let () (declare (not safe)) (_fail!135959_)))))))
          (if _def-syntax?135957_
              (let () (declare (not safe)) (_make-descr135960_ '-1))
              (let ((_code135962_
                     (let ()
                       (declare (not safe))
                       (##source-code _src135956_))))
                (if (and (let () (declare (not safe)) (##pair? _code135962_))
                         (let ((__tmp140143
                                (let ((__tmp140144
                                       (let ((__tmp140145
                                              (let ()
                                                (declare (not safe))
                                                (##car _code135962_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp140145
                                          _src135956_))))
                                  (declare (not safe))
                                  (##source-code __tmp140144))))
                           (declare (not safe))
                           (##memq __tmp140143 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src135956_ _src135956_ '-3))
                      (let ((__tmp140140
                             (let ((__tmp140141
                                    (let ((__tmp140142
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code135962_))))
                                      (declare (not safe))
                                      (##sourcify __tmp140142 _src135956_))))
                               (declare (not safe))
                               (##form-size __tmp140141))))
                        (declare (not safe))
                        (_make-descr135960_ __tmp140140)))
                    (let () (declare (not safe)) (_fail!135959_))))))))
    (define __source->syntax
      (lambda (_src135950_)
        (let _recur135952_ ((_e135954_ _src135950_))
          (if (let () (declare (not safe)) (##source? _e135954_))
              (let ((__tmp140153
                     (let ((__tmp140154
                            (let ()
                              (declare (not safe))
                              (##source-code _e135954_))))
                       (declare (not safe))
                       (_recur135952_ __tmp140154)))
                    (__tmp140152
                     (let () (declare (not safe)) (##source-locat _e135954_))))
                (declare (not safe))
                (##structure AST::t __tmp140153 __tmp140152))
              (if (let () (declare (not safe)) (pair? _e135954_))
                  (let ((__tmp140150
                         (let ((__tmp140151
                                (let ()
                                  (declare (not safe))
                                  (##car _e135954_))))
                           (declare (not safe))
                           (_recur135952_ __tmp140151)))
                        (__tmp140148
                         (let ((__tmp140149
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e135954_))))
                           (declare (not safe))
                           (_recur135952_ __tmp140149))))
                    (declare (not safe))
                    (cons __tmp140150 __tmp140148))
                  (if (let () (declare (not safe)) (vector? _e135954_))
                      (vector-map _recur135952_ _e135954_)
                      (if (let () (declare (not safe)) (box? _e135954_))
                          (let ((__tmp140146
                                 (let ((__tmp140147 (unbox _e135954_)))
                                   (declare (not safe))
                                   (_recur135952_ __tmp140147))))
                            (declare (not safe))
                            (box __tmp140146))
                          _e135954_)))))))
    (define __compile-top-source
      (lambda (_stx135948_)
        (let ((__tmp140155
               (let () (declare (not safe)) (__compile-top _stx135948_))))
          (declare (not safe))
          (cons '__noexpand: __tmp140155))))
    (define __compile-top
      (lambda (_stx135946_)
        (let ((__tmp140156 (gx#core-compile-top-syntax _stx135946_)))
          (declare (not safe))
          (__compile __tmp140156))))
    (define __eval-import
      (lambda (_in135927_)
        (letrec* ((_mods135929_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import1135930_
                   (lambda (_in135937_ _phi135938_)
                     (if (gx#module-import? _in135937_)
                         (let ((_iphi135940_
                                (fx+ _phi135938_
                                     (gx#module-import-phi _in135937_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi135940_))
                               (let ((__tmp140158
                                      (gx#module-export-context
                                       (gx#module-import-source _in135937_))))
                                 (declare (not safe))
                                 (_eval1135931_ __tmp140158))
                               '#!void))
                         (if (gx#module-context? _in135937_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi135938_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1135931_ _in135937_))
                                 '#!void)
                             (if (gx#import-set? _in135937_)
                                 (let ((_iphi135942_
                                        (fx+ _phi135938_
                                             (gx#import-set-phi _in135937_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi135942_))
                                       (let ((__tmp140157
                                              (gx#import-set-source
                                               _in135937_)))
                                         (declare (not safe))
                                         (_eval1135931_ __tmp140157))
                                       (if (fxpositive? _iphi135942_)
                                           (for-each
                                            (lambda (_in135944_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1135930_
                                                 _in135944_
                                                 _iphi135942_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in135937_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in135937_))))))
                  (_eval1135931_
                   (lambda (_ctx135935_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods135929_ _ctx135935_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods135929_ _ctx135935_ '#t))
                           (__eval-module _ctx135935_))))))
          (if (let () (declare (not safe)) (pair? _in135927_))
              (for-each
               (lambda (_in135933_)
                 (let () (declare (not safe)) (_import1135930_ _in135933_ '0)))
               _in135927_)
              (let () (declare (not safe)) (_import1135930_ _in135927_ '0))))))
    (define __eval-module
      (lambda (_obj135925_) (gx#core-eval-module _obj135925_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules135860_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home135862_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir135864_ (path-expand '"lib" _home135862_))
                     (_userpath135866_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath135868_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir135864_ '()))
                          (let ((__tmp140159
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir135864_ '()))))
                            (declare (not safe))
                            (cons _userpath135866_ __tmp140159))))
                     (_loadpath135877_
                      (let ((_$e135870_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e135870_
                            ((lambda (_envvar135873_)
                               (append (let ((__tmp140161
                                              (lambda (_x135875_)
                                                (let ((__tmp140162
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x135875_))))
                                                  (declare (not safe))
                                                  (not __tmp140162))))
                                             (__tmp140160
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar135873_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp140161 __tmp140160))
                                       _loadpath135868_))
                             _$e135870_)
                            _loadpath135868_))))
                (current-module-library-path _loadpath135877_))
              (let* ((_registry-entry135882_
                      (lambda (_m135880_)
                        (let ()
                          (declare (not safe))
                          (cons _m135880_ 'builtin))))
                     (_module-registry135922_
                      (let _lp135884_ ((_rest135886_ _builtin-modules135860_)
                                       (_registry135887_ '()))
                        (let* ((_rest135888135896_ _rest135886_)
                               (_else135890135904_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry135887_))))
                               (_K135892135910_
                                (lambda (_rest135907_ _mod135908_)
                                  (let ((__tmp140163
                                         (let ((__tmp140167
                                                (let ((__tmp140168
                                                       (string-append
                                                        _mod135908_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry135882_
                                                   __tmp140168)))
                                               (__tmp140164
                                                (let ((__tmp140165
                                                       (let ((__tmp140166
                                                              (string-append
                                                               _mod135908_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry135882_
                                                          __tmp140166))))
                                                  (declare (not safe))
                                                  (cons __tmp140165
                                                        _registry135887_))))
                                           (declare (not safe))
                                           (cons __tmp140167 __tmp140164))))
                                    (declare (not safe))
                                    (_lp135884_ _rest135907_ __tmp140163)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest135888135896_))
                              (let ((_hd135893135913_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest135888135896_)))
                                    (_tl135894135915_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest135888135896_))))
                                (let* ((_mod135918_ _hd135893135913_)
                                       (_rest135920_ _tl135894135915_))
                                  (declare (not safe))
                                  (_K135892135910_ _rest135920_ _mod135918_)))
                              (let ()
                                (declare (not safe))
                                (_else135890135904_)))))))
                (current-module-registry _module-registry135922_))
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
