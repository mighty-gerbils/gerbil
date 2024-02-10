(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707555132)
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
        (letrec* ((_+readtable+115844_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core115846_ (gx#import-module ':gerbil/core))
                 (_pre115848_ (gx#make-prelude-context _core115846_)))
            (gx#current-expander-module-prelude _pre115848_)
            (gx#core-bind-root-syntax! ':<core> _pre115848_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port115851_)
             (input-port-readtable-set! _port115851_ _+readtable+115844_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port115853_)
             (output-port-readtable-set!
              _port115853_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port115853_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline115841_) '#!void))
    (define load-scheme
      (lambda (_path115836_)
        (let ((__tmp120049
               (lambda ()
                 (let ((__tmp120050 (lambda _args115839_ '#f)))
                   (declare (not safe))
                   (##load _path115836_ __tmp120050 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp120049
           __loading-scheme-source
           _path115836_))))
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
      (lambda _paths115831_
        (apply add-library-load-path _paths115831_)
        (apply add-expander-load-path _paths115831_)))
    (define add-library-load-path
      (lambda _paths115820_
        (let* ((_current115822_ (current-module-library-path))
               (_paths115824_ (map path-expand _paths115820_))
               (_paths115828_
                (let ((__tmp120051
                       (lambda (_x115826_)
                         (let ((__tmp120052
                                (member _x115826_ _current115822_)))
                           (declare (not safe))
                           (not __tmp120052)))))
                  (declare (not safe))
                  (filter __tmp120051 _paths115824_))))
          (current-module-library-path
           (append _current115822_ _paths115828_)))))
    (define add-expander-load-path
      (lambda _paths115809_
        (let* ((_current115811_ (gx#current-expander-module-library-path))
               (_paths115813_ (map path-expand _paths115809_))
               (_paths115817_
                (let ((__tmp120053
                       (lambda (_x115815_)
                         (let ((__tmp120054
                                (member _x115815_ _current115811_)))
                           (declare (not safe))
                           (not __tmp120054)))))
                  (declare (not safe))
                  (filter __tmp120053 _paths115813_))))
          (gx#current-expander-module-library-path
           (append _current115811_ _paths115817_)))))
    (define cons-load-path
      (lambda _paths115807_
        (apply cons-library-load-path _paths115807_)
        (apply cons-expander-load-path _paths115807_)))
    (define cons-library-load-path
      (lambda _paths115802_
        (let ((_current115804_ (current-module-library-path))
              (_paths115805_ (map path-expand _paths115802_)))
          (current-module-library-path
           (append _paths115805_ _current115804_)))))
    (define cons-expander-load-path
      (lambda _paths115797_
        (let ((_current115799_ (gx#current-expander-module-library-path))
              (_paths115800_ (map path-expand _paths115797_)))
          (gx#current-expander-module-library-path
           (append _paths115800_ _current115799_)))))
    (define with-cons-load-path
      (lambda (_thunk115793_ . _paths115794_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk115793_
                        _paths115794_))
               _paths115794_)))
    (define with-cons-library-load-path
      (lambda (_thunk115786_ . _paths115787_)
        (let ((_current115789_ (current-module-library-path))
              (_paths115790_ (map path-expand _paths115787_)))
          (let ((__tmp120056 (lambda () (_thunk115786_)))
                (__tmp120055 (append _paths115790_ _current115789_)))
            (declare (not safe))
            (call-with-parameters
             __tmp120056
             current-module-library-path
             __tmp120055)))))
    (define with-cons-expander-load-path
      (lambda (_thunk115779_ . _paths115780_)
        (let ((_current115782_ (gx#current-expander-module-library-path))
              (_paths115783_ (map path-expand _paths115780_)))
          (let ((__tmp120058 (lambda () (_thunk115779_)))
                (__tmp120057 (append _paths115783_ _current115782_)))
            (declare (not safe))
            (call-with-parameters
             __tmp120058
             gx#current-expander-module-library-path
             __tmp120057)))))
    (define __expand-source
      (lambda (_src115765_)
        (letrec ((_expand115767_
                  (lambda (_src115777_)
                    (let ((__tmp120059
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src115777_)))))
                      (declare (not safe))
                      (__compile-top __tmp120059))))
                 (_no-expand115768_
                  (lambda (_src115773_)
                    (if (__loading-scheme-source)
                        _src115773_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src115773_))
                            (let ((_code115775_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src115773_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code115775_))
                                  (if (let ((__tmp120060
                                             (let ()
                                               (declare (not safe))
                                               (##car _code115775_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp120060))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code115775_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e115770_
                 (let ()
                   (declare (not safe))
                   (_no-expand115768_ _src115765_))))
            (if _$e115770_
                _$e115770_
                (let () (declare (not safe)) (_expand115767_ _src115765_)))))))
    (define __macro-descr
      (lambda (_src115751_ _def-syntax?115752_)
        (letrec ((_fail!115754_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src115751_))))
                 (_make-descr115755_
                  (lambda (_size115759_)
                    (let ((_expander115762_
                           (let ((__tmp120061
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src115751_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp120061
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander115762_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?115752_
                             _size115759_
                             _expander115762_
                             _src115751_))
                          (let () (declare (not safe)) (_fail!115754_)))))))
          (if _def-syntax?115752_
              (let () (declare (not safe)) (_make-descr115755_ '-1))
              (let ((_code115757_
                     (let ()
                       (declare (not safe))
                       (##source-code _src115751_))))
                (if (and (let () (declare (not safe)) (##pair? _code115757_))
                         (let ((__tmp120065
                                (let ((__tmp120066
                                       (let ((__tmp120067
                                              (let ()
                                                (declare (not safe))
                                                (##car _code115757_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp120067
                                          _src115751_))))
                                  (declare (not safe))
                                  (##source-code __tmp120066))))
                           (declare (not safe))
                           (##memq __tmp120065 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src115751_ _src115751_ '-3))
                      (let ((__tmp120062
                             (let ((__tmp120063
                                    (let ((__tmp120064
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code115757_))))
                                      (declare (not safe))
                                      (##sourcify __tmp120064 _src115751_))))
                               (declare (not safe))
                               (##form-size __tmp120063))))
                        (declare (not safe))
                        (_make-descr115755_ __tmp120062)))
                    (let () (declare (not safe)) (_fail!115754_))))))))
    (define __source->syntax
      (lambda (_src115745_)
        (let _recur115747_ ((_e115749_ _src115745_))
          (if (let () (declare (not safe)) (##source? _e115749_))
              (let ((__tmp120075
                     (let ((__tmp120076
                            (let ()
                              (declare (not safe))
                              (##source-code _e115749_))))
                       (declare (not safe))
                       (_recur115747_ __tmp120076)))
                    (__tmp120074
                     (let () (declare (not safe)) (##source-locat _e115749_))))
                (declare (not safe))
                (##structure AST::t __tmp120075 __tmp120074))
              (if (let () (declare (not safe)) (pair? _e115749_))
                  (let ((__tmp120072
                         (let ((__tmp120073
                                (let ()
                                  (declare (not safe))
                                  (##car _e115749_))))
                           (declare (not safe))
                           (_recur115747_ __tmp120073)))
                        (__tmp120070
                         (let ((__tmp120071
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e115749_))))
                           (declare (not safe))
                           (_recur115747_ __tmp120071))))
                    (declare (not safe))
                    (cons __tmp120072 __tmp120070))
                  (if (let () (declare (not safe)) (vector? _e115749_))
                      (vector-map _recur115747_ _e115749_)
                      (if (let () (declare (not safe)) (box? _e115749_))
                          (let ((__tmp120068
                                 (let ((__tmp120069 (unbox _e115749_)))
                                   (declare (not safe))
                                   (_recur115747_ __tmp120069))))
                            (declare (not safe))
                            (box __tmp120068))
                          _e115749_)))))))
    (define __compile-top-source
      (lambda (_stx115743_)
        (let ((__tmp120077
               (let () (declare (not safe)) (__compile-top _stx115743_))))
          (declare (not safe))
          (cons '__noexpand: __tmp120077))))
    (define __compile-top
      (lambda (_stx115741_)
        (let ((__tmp120078 (gx#core-compile-top-syntax _stx115741_)))
          (declare (not safe))
          (__compile __tmp120078))))
    (define __eval-import
      (lambda (_in115722_)
        (letrec* ((_mods115724_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1115725_
                   (lambda (_in115732_ _phi115733_)
                     (if (gx#module-import? _in115732_)
                         (let ((_iphi115735_
                                (fx+ _phi115733_
                                     (gx#module-import-phi _in115732_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi115735_))
                               (let ((__tmp120080
                                      (gx#module-export-context
                                       (gx#module-import-source _in115732_))))
                                 (declare (not safe))
                                 (_eval1115726_ __tmp120080))
                               '#!void))
                         (if (gx#module-context? _in115732_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi115733_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1115726_ _in115732_))
                                 '#!void)
                             (if (gx#import-set? _in115732_)
                                 (let ((_iphi115737_
                                        (fx+ _phi115733_
                                             (gx#import-set-phi _in115732_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi115737_))
                                       (let ((__tmp120079
                                              (gx#import-set-source
                                               _in115732_)))
                                         (declare (not safe))
                                         (_eval1115726_ __tmp120079))
                                       (if (fxpositive? _iphi115737_)
                                           (for-each
                                            (lambda (_in115739_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1115725_
                                                 _in115739_
                                                 _iphi115737_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in115732_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in115732_))))))
                  (_eval1115726_
                   (lambda (_ctx115730_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods115724_ _ctx115730_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods115724_ _ctx115730_ '#t))
                           (__eval-module _ctx115730_))))))
          (if (let () (declare (not safe)) (pair? _in115722_))
              (for-each
               (lambda (_in115728_)
                 (let () (declare (not safe)) (_import1115725_ _in115728_ '0)))
               _in115722_)
              (let () (declare (not safe)) (_import1115725_ _in115722_ '0))))))
    (define __eval-module
      (lambda (_obj115715_)
        (let* ((_key115717_
                (if (gx#module-context? _obj115715_)
                    (gx#module-context-path _obj115715_)
                    _obj115715_))
               (_$e115719_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key115717_ '#f))))
          (if _$e115719_
              (values _$e115719_)
              (gx#core-eval-module _obj115715_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules115650_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home115652_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir115654_ (path-expand '"lib" _home115652_))
                     (_userpath115656_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath115658_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir115654_ '()))
                          (let ((__tmp120081
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir115654_ '()))))
                            (declare (not safe))
                            (cons _userpath115656_ __tmp120081))))
                     (_loadpath115667_
                      (let ((_$e115660_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e115660_
                            ((lambda (_envvar115663_)
                               (append (let ((__tmp120083
                                              (lambda (_x115665_)
                                                (let ((__tmp120084
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x115665_))))
                                                  (declare (not safe))
                                                  (not __tmp120084))))
                                             (__tmp120082
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar115663_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp120083 __tmp120082))
                                       _loadpath115658_))
                             _$e115660_)
                            _loadpath115658_))))
                (current-module-library-path _loadpath115667_))
              (let* ((_registry-entry115672_
                      (lambda (_m115670_)
                        (let ()
                          (declare (not safe))
                          (cons _m115670_ 'builtin))))
                     (_module-registry115712_
                      (let _lp115674_ ((_rest115676_ _builtin-modules115650_)
                                       (_registry115677_ '()))
                        (let* ((_rest115678115686_ _rest115676_)
                               (_else115680115694_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry115677_))))
                               (_K115682115700_
                                (lambda (_rest115697_ _mod115698_)
                                  (let ((__tmp120085
                                         (let ((__tmp120089
                                                (let ((__tmp120090
                                                       (string-append
                                                        _mod115698_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry115672_
                                                   __tmp120090)))
                                               (__tmp120086
                                                (let ((__tmp120087
                                                       (let ((__tmp120088
                                                              (string-append
                                                               _mod115698_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry115672_
                                                          __tmp120088))))
                                                  (declare (not safe))
                                                  (cons __tmp120087
                                                        _registry115677_))))
                                           (declare (not safe))
                                           (cons __tmp120089 __tmp120086))))
                                    (declare (not safe))
                                    (_lp115674_ _rest115697_ __tmp120085)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest115678115686_))
                              (let ((_hd115683115703_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest115678115686_)))
                                    (_tl115684115705_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest115678115686_))))
                                (let* ((_mod115708_ _hd115683115703_)
                                       (_rest115710_ _tl115684115705_))
                                  (declare (not safe))
                                  (_K115682115700_ _rest115710_ _mod115708_)))
                              (let ()
                                (declare (not safe))
                                (_else115680115694_)))))))
                (current-module-registry _module-registry115712_))
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
