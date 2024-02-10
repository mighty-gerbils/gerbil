(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707552286)
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
        (letrec* ((_+readtable+115839_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core115841_ (gx#import-module ':gerbil/core))
                 (_pre115843_ (gx#make-prelude-context _core115841_)))
            (gx#current-expander-module-prelude _pre115843_)
            (gx#core-bind-root-syntax! ':<core> _pre115843_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port115846_)
             (input-port-readtable-set! _port115846_ _+readtable+115839_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port115848_)
             (output-port-readtable-set!
              _port115848_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port115848_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline115836_) '#!void))
    (define load-scheme
      (lambda (_path115831_)
        (let ((__tmp120044
               (lambda ()
                 (let ((__tmp120045 (lambda _args115834_ '#f)))
                   (declare (not safe))
                   (##load _path115831_ __tmp120045 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp120044
           __loading-scheme-source
           _path115831_))))
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
      (lambda _paths115826_
        (apply add-library-load-path _paths115826_)
        (apply add-expander-load-path _paths115826_)))
    (define add-library-load-path
      (lambda _paths115815_
        (let* ((_current115817_ (current-module-library-path))
               (_paths115819_ (map path-expand _paths115815_))
               (_paths115823_
                (let ((__tmp120046
                       (lambda (_x115821_)
                         (let ((__tmp120047
                                (member _x115821_ _current115817_)))
                           (declare (not safe))
                           (not __tmp120047)))))
                  (declare (not safe))
                  (filter __tmp120046 _paths115819_))))
          (current-module-library-path
           (append _current115817_ _paths115823_)))))
    (define add-expander-load-path
      (lambda _paths115804_
        (let* ((_current115806_ (gx#current-expander-module-library-path))
               (_paths115808_ (map path-expand _paths115804_))
               (_paths115812_
                (let ((__tmp120048
                       (lambda (_x115810_)
                         (let ((__tmp120049
                                (member _x115810_ _current115806_)))
                           (declare (not safe))
                           (not __tmp120049)))))
                  (declare (not safe))
                  (filter __tmp120048 _paths115808_))))
          (gx#current-expander-module-library-path
           (append _current115806_ _paths115812_)))))
    (define cons-load-path
      (lambda _paths115802_
        (apply cons-library-load-path _paths115802_)
        (apply cons-expander-load-path _paths115802_)))
    (define cons-library-load-path
      (lambda _paths115797_
        (let ((_current115799_ (current-module-library-path))
              (_paths115800_ (map path-expand _paths115797_)))
          (current-module-library-path
           (append _paths115800_ _current115799_)))))
    (define cons-expander-load-path
      (lambda _paths115792_
        (let ((_current115794_ (gx#current-expander-module-library-path))
              (_paths115795_ (map path-expand _paths115792_)))
          (gx#current-expander-module-library-path
           (append _paths115795_ _current115794_)))))
    (define with-cons-load-path
      (lambda (_thunk115788_ . _paths115789_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk115788_
                        _paths115789_))
               _paths115789_)))
    (define with-cons-library-load-path
      (lambda (_thunk115781_ . _paths115782_)
        (let ((_current115784_ (current-module-library-path))
              (_paths115785_ (map path-expand _paths115782_)))
          (let ((__tmp120051 (lambda () (_thunk115781_)))
                (__tmp120050 (append _paths115785_ _current115784_)))
            (declare (not safe))
            (call-with-parameters
             __tmp120051
             current-module-library-path
             __tmp120050)))))
    (define with-cons-expander-load-path
      (lambda (_thunk115774_ . _paths115775_)
        (let ((_current115777_ (gx#current-expander-module-library-path))
              (_paths115778_ (map path-expand _paths115775_)))
          (let ((__tmp120053 (lambda () (_thunk115774_)))
                (__tmp120052 (append _paths115778_ _current115777_)))
            (declare (not safe))
            (call-with-parameters
             __tmp120053
             gx#current-expander-module-library-path
             __tmp120052)))))
    (define __expand-source
      (lambda (_src115760_)
        (letrec ((_expand115762_
                  (lambda (_src115772_)
                    (let ((__tmp120054
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src115772_)))))
                      (declare (not safe))
                      (__compile-top __tmp120054))))
                 (_no-expand115763_
                  (lambda (_src115768_)
                    (if (__loading-scheme-source)
                        _src115768_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src115768_))
                            (let ((_code115770_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src115768_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code115770_))
                                  (if (let ((__tmp120055
                                             (let ()
                                               (declare (not safe))
                                               (##car _code115770_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp120055))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code115770_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e115765_
                 (let ()
                   (declare (not safe))
                   (_no-expand115763_ _src115760_))))
            (if _$e115765_
                _$e115765_
                (let () (declare (not safe)) (_expand115762_ _src115760_)))))))
    (define __macro-descr
      (lambda (_src115746_ _def-syntax?115747_)
        (letrec ((_fail!115749_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src115746_))))
                 (_make-descr115750_
                  (lambda (_size115754_)
                    (let ((_expander115757_
                           (let ((__tmp120056
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src115746_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp120056
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander115757_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?115747_
                             _size115754_
                             _expander115757_
                             _src115746_))
                          (let () (declare (not safe)) (_fail!115749_)))))))
          (if _def-syntax?115747_
              (let () (declare (not safe)) (_make-descr115750_ '-1))
              (let ((_code115752_
                     (let ()
                       (declare (not safe))
                       (##source-code _src115746_))))
                (if (and (let () (declare (not safe)) (##pair? _code115752_))
                         (let ((__tmp120060
                                (let ((__tmp120061
                                       (let ((__tmp120062
                                              (let ()
                                                (declare (not safe))
                                                (##car _code115752_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp120062
                                          _src115746_))))
                                  (declare (not safe))
                                  (##source-code __tmp120061))))
                           (declare (not safe))
                           (##memq __tmp120060 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src115746_ _src115746_ '-3))
                      (let ((__tmp120057
                             (let ((__tmp120058
                                    (let ((__tmp120059
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code115752_))))
                                      (declare (not safe))
                                      (##sourcify __tmp120059 _src115746_))))
                               (declare (not safe))
                               (##form-size __tmp120058))))
                        (declare (not safe))
                        (_make-descr115750_ __tmp120057)))
                    (let () (declare (not safe)) (_fail!115749_))))))))
    (define __source->syntax
      (lambda (_src115740_)
        (let _recur115742_ ((_e115744_ _src115740_))
          (if (let () (declare (not safe)) (##source? _e115744_))
              (let ((__tmp120070
                     (let ((__tmp120071
                            (let ()
                              (declare (not safe))
                              (##source-code _e115744_))))
                       (declare (not safe))
                       (_recur115742_ __tmp120071)))
                    (__tmp120069
                     (let () (declare (not safe)) (##source-locat _e115744_))))
                (declare (not safe))
                (##structure AST::t __tmp120070 __tmp120069))
              (if (let () (declare (not safe)) (pair? _e115744_))
                  (let ((__tmp120067
                         (let ((__tmp120068
                                (let ()
                                  (declare (not safe))
                                  (##car _e115744_))))
                           (declare (not safe))
                           (_recur115742_ __tmp120068)))
                        (__tmp120065
                         (let ((__tmp120066
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e115744_))))
                           (declare (not safe))
                           (_recur115742_ __tmp120066))))
                    (declare (not safe))
                    (cons __tmp120067 __tmp120065))
                  (if (let () (declare (not safe)) (vector? _e115744_))
                      (vector-map _recur115742_ _e115744_)
                      (if (let () (declare (not safe)) (box? _e115744_))
                          (let ((__tmp120063
                                 (let ((__tmp120064 (unbox _e115744_)))
                                   (declare (not safe))
                                   (_recur115742_ __tmp120064))))
                            (declare (not safe))
                            (box __tmp120063))
                          _e115744_)))))))
    (define __compile-top-source
      (lambda (_stx115738_)
        (let ((__tmp120072
               (let () (declare (not safe)) (__compile-top _stx115738_))))
          (declare (not safe))
          (cons '__noexpand: __tmp120072))))
    (define __compile-top
      (lambda (_stx115736_)
        (let ((__tmp120073 (gx#core-compile-top-syntax _stx115736_)))
          (declare (not safe))
          (__compile __tmp120073))))
    (define __eval-import
      (lambda (_in115717_)
        (letrec* ((_mods115719_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1115720_
                   (lambda (_in115727_ _phi115728_)
                     (if (gx#module-import? _in115727_)
                         (let ((_iphi115730_
                                (fx+ _phi115728_
                                     (gx#module-import-phi _in115727_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi115730_))
                               (let ((__tmp120075
                                      (gx#module-export-context
                                       (gx#module-import-source _in115727_))))
                                 (declare (not safe))
                                 (_eval1115721_ __tmp120075))
                               '#!void))
                         (if (gx#module-context? _in115727_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi115728_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1115721_ _in115727_))
                                 '#!void)
                             (if (gx#import-set? _in115727_)
                                 (let ((_iphi115732_
                                        (fx+ _phi115728_
                                             (gx#import-set-phi _in115727_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi115732_))
                                       (let ((__tmp120074
                                              (gx#import-set-source
                                               _in115727_)))
                                         (declare (not safe))
                                         (_eval1115721_ __tmp120074))
                                       (if (fxpositive? _iphi115732_)
                                           (for-each
                                            (lambda (_in115734_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1115720_
                                                 _in115734_
                                                 _iphi115732_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in115727_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in115727_))))))
                  (_eval1115721_
                   (lambda (_ctx115725_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods115719_ _ctx115725_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods115719_ _ctx115725_ '#t))
                           (__eval-module _ctx115725_))))))
          (if (let () (declare (not safe)) (pair? _in115717_))
              (for-each
               (lambda (_in115723_)
                 (let () (declare (not safe)) (_import1115720_ _in115723_ '0)))
               _in115717_)
              (let () (declare (not safe)) (_import1115720_ _in115717_ '0))))))
    (define __eval-module
      (lambda (_obj115710_)
        (let* ((_key115712_
                (if (gx#module-context? _obj115710_)
                    (gx#module-context-path _obj115710_)
                    _obj115710_))
               (_$e115714_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key115712_ '#f))))
          (if _$e115714_
              (values _$e115714_)
              (gx#core-eval-module _obj115710_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules115645_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home115647_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir115649_ (path-expand '"lib" _home115647_))
                     (_userpath115651_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath115653_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir115649_ '()))
                          (let ((__tmp120076
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir115649_ '()))))
                            (declare (not safe))
                            (cons _userpath115651_ __tmp120076))))
                     (_loadpath115662_
                      (let ((_$e115655_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e115655_
                            ((lambda (_envvar115658_)
                               (append (let ((__tmp120078
                                              (lambda (_x115660_)
                                                (let ((__tmp120079
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x115660_))))
                                                  (declare (not safe))
                                                  (not __tmp120079))))
                                             (__tmp120077
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar115658_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp120078 __tmp120077))
                                       _loadpath115653_))
                             _$e115655_)
                            _loadpath115653_))))
                (current-module-library-path _loadpath115662_))
              (let* ((_registry-entry115667_
                      (lambda (_m115665_)
                        (let ()
                          (declare (not safe))
                          (cons _m115665_ 'builtin))))
                     (_module-registry115707_
                      (let _lp115669_ ((_rest115671_ _builtin-modules115645_)
                                       (_registry115672_ '()))
                        (let* ((_rest115673115681_ _rest115671_)
                               (_else115675115689_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry115672_))))
                               (_K115677115695_
                                (lambda (_rest115692_ _mod115693_)
                                  (let ((__tmp120080
                                         (let ((__tmp120084
                                                (let ((__tmp120085
                                                       (string-append
                                                        _mod115693_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry115667_
                                                   __tmp120085)))
                                               (__tmp120081
                                                (let ((__tmp120082
                                                       (let ((__tmp120083
                                                              (string-append
                                                               _mod115693_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry115667_
                                                          __tmp120083))))
                                                  (declare (not safe))
                                                  (cons __tmp120082
                                                        _registry115672_))))
                                           (declare (not safe))
                                           (cons __tmp120084 __tmp120081))))
                                    (declare (not safe))
                                    (_lp115669_ _rest115692_ __tmp120080)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest115673115681_))
                              (let ((_hd115678115698_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest115673115681_)))
                                    (_tl115679115700_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest115673115681_))))
                                (let* ((_mod115703_ _hd115678115698_)
                                       (_rest115705_ _tl115679115700_))
                                  (declare (not safe))
                                  (_K115677115695_ _rest115705_ _mod115703_)))
                              (let ()
                                (declare (not safe))
                                (_else115675115689_)))))))
                (current-module-registry _module-registry115707_))
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
