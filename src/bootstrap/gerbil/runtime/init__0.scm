(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707556025)
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
        (letrec* ((_+readtable+115838_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core115840_ (gx#import-module ':gerbil/core))
                 (_pre115842_ (gx#make-prelude-context _core115840_)))
            (gx#current-expander-module-prelude _pre115842_)
            (gx#core-bind-root-syntax! ':<core> _pre115842_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port115845_)
             (input-port-readtable-set! _port115845_ _+readtable+115838_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port115847_)
             (output-port-readtable-set!
              _port115847_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port115847_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline115835_) '#!void))
    (define load-scheme
      (lambda (_path115830_)
        (let ((__tmp120043
               (lambda ()
                 (let ((__tmp120044 (lambda _args115833_ '#f)))
                   (declare (not safe))
                   (##load _path115830_ __tmp120044 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp120043
           __loading-scheme-source
           _path115830_))))
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
      (lambda _paths115825_
        (apply add-library-load-path _paths115825_)
        (apply add-expander-load-path _paths115825_)))
    (define add-library-load-path
      (lambda _paths115814_
        (let* ((_current115816_ (current-module-library-path))
               (_paths115818_ (map path-expand _paths115814_))
               (_paths115822_
                (let ((__tmp120045
                       (lambda (_x115820_)
                         (let ((__tmp120046
                                (member _x115820_ _current115816_)))
                           (declare (not safe))
                           (not __tmp120046)))))
                  (declare (not safe))
                  (filter __tmp120045 _paths115818_))))
          (current-module-library-path
           (append _current115816_ _paths115822_)))))
    (define add-expander-load-path
      (lambda _paths115803_
        (let* ((_current115805_ (gx#current-expander-module-library-path))
               (_paths115807_ (map path-expand _paths115803_))
               (_paths115811_
                (let ((__tmp120047
                       (lambda (_x115809_)
                         (let ((__tmp120048
                                (member _x115809_ _current115805_)))
                           (declare (not safe))
                           (not __tmp120048)))))
                  (declare (not safe))
                  (filter __tmp120047 _paths115807_))))
          (gx#current-expander-module-library-path
           (append _current115805_ _paths115811_)))))
    (define cons-load-path
      (lambda _paths115801_
        (apply cons-library-load-path _paths115801_)
        (apply cons-expander-load-path _paths115801_)))
    (define cons-library-load-path
      (lambda _paths115796_
        (let ((_current115798_ (current-module-library-path))
              (_paths115799_ (map path-expand _paths115796_)))
          (current-module-library-path
           (append _paths115799_ _current115798_)))))
    (define cons-expander-load-path
      (lambda _paths115791_
        (let ((_current115793_ (gx#current-expander-module-library-path))
              (_paths115794_ (map path-expand _paths115791_)))
          (gx#current-expander-module-library-path
           (append _paths115794_ _current115793_)))))
    (define with-cons-load-path
      (lambda (_thunk115787_ . _paths115788_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk115787_
                        _paths115788_))
               _paths115788_)))
    (define with-cons-library-load-path
      (lambda (_thunk115780_ . _paths115781_)
        (let ((_current115783_ (current-module-library-path))
              (_paths115784_ (map path-expand _paths115781_)))
          (let ((__tmp120050 (lambda () (_thunk115780_)))
                (__tmp120049 (append _paths115784_ _current115783_)))
            (declare (not safe))
            (call-with-parameters
             __tmp120050
             current-module-library-path
             __tmp120049)))))
    (define with-cons-expander-load-path
      (lambda (_thunk115773_ . _paths115774_)
        (let ((_current115776_ (gx#current-expander-module-library-path))
              (_paths115777_ (map path-expand _paths115774_)))
          (let ((__tmp120052 (lambda () (_thunk115773_)))
                (__tmp120051 (append _paths115777_ _current115776_)))
            (declare (not safe))
            (call-with-parameters
             __tmp120052
             gx#current-expander-module-library-path
             __tmp120051)))))
    (define __expand-source
      (lambda (_src115759_)
        (letrec ((_expand115761_
                  (lambda (_src115771_)
                    (let ((__tmp120053
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src115771_)))))
                      (declare (not safe))
                      (__compile-top __tmp120053))))
                 (_no-expand115762_
                  (lambda (_src115767_)
                    (if (__loading-scheme-source)
                        _src115767_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src115767_))
                            (let ((_code115769_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src115767_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code115769_))
                                  (if (let ((__tmp120054
                                             (let ()
                                               (declare (not safe))
                                               (##car _code115769_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp120054))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code115769_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e115764_
                 (let ()
                   (declare (not safe))
                   (_no-expand115762_ _src115759_))))
            (if _$e115764_
                _$e115764_
                (let () (declare (not safe)) (_expand115761_ _src115759_)))))))
    (define __macro-descr
      (lambda (_src115745_ _def-syntax?115746_)
        (letrec ((_fail!115748_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src115745_))))
                 (_make-descr115749_
                  (lambda (_size115753_)
                    (let ((_expander115756_
                           (let ((__tmp120055
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src115745_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp120055
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander115756_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?115746_
                             _size115753_
                             _expander115756_
                             _src115745_))
                          (let () (declare (not safe)) (_fail!115748_)))))))
          (if _def-syntax?115746_
              (let () (declare (not safe)) (_make-descr115749_ '-1))
              (let ((_code115751_
                     (let ()
                       (declare (not safe))
                       (##source-code _src115745_))))
                (if (and (let () (declare (not safe)) (##pair? _code115751_))
                         (let ((__tmp120059
                                (let ((__tmp120060
                                       (let ((__tmp120061
                                              (let ()
                                                (declare (not safe))
                                                (##car _code115751_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp120061
                                          _src115745_))))
                                  (declare (not safe))
                                  (##source-code __tmp120060))))
                           (declare (not safe))
                           (##memq __tmp120059 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src115745_ _src115745_ '-3))
                      (let ((__tmp120056
                             (let ((__tmp120057
                                    (let ((__tmp120058
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code115751_))))
                                      (declare (not safe))
                                      (##sourcify __tmp120058 _src115745_))))
                               (declare (not safe))
                               (##form-size __tmp120057))))
                        (declare (not safe))
                        (_make-descr115749_ __tmp120056)))
                    (let () (declare (not safe)) (_fail!115748_))))))))
    (define __source->syntax
      (lambda (_src115739_)
        (let _recur115741_ ((_e115743_ _src115739_))
          (if (let () (declare (not safe)) (##source? _e115743_))
              (let ((__tmp120069
                     (let ((__tmp120070
                            (let ()
                              (declare (not safe))
                              (##source-code _e115743_))))
                       (declare (not safe))
                       (_recur115741_ __tmp120070)))
                    (__tmp120068
                     (let () (declare (not safe)) (##source-locat _e115743_))))
                (declare (not safe))
                (##structure AST::t __tmp120069 __tmp120068))
              (if (let () (declare (not safe)) (pair? _e115743_))
                  (let ((__tmp120066
                         (let ((__tmp120067
                                (let ()
                                  (declare (not safe))
                                  (##car _e115743_))))
                           (declare (not safe))
                           (_recur115741_ __tmp120067)))
                        (__tmp120064
                         (let ((__tmp120065
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e115743_))))
                           (declare (not safe))
                           (_recur115741_ __tmp120065))))
                    (declare (not safe))
                    (cons __tmp120066 __tmp120064))
                  (if (let () (declare (not safe)) (vector? _e115743_))
                      (vector-map _recur115741_ _e115743_)
                      (if (let () (declare (not safe)) (box? _e115743_))
                          (let ((__tmp120062
                                 (let ((__tmp120063 (unbox _e115743_)))
                                   (declare (not safe))
                                   (_recur115741_ __tmp120063))))
                            (declare (not safe))
                            (box __tmp120062))
                          _e115743_)))))))
    (define __compile-top-source
      (lambda (_stx115737_)
        (let ((__tmp120071
               (let () (declare (not safe)) (__compile-top _stx115737_))))
          (declare (not safe))
          (cons '__noexpand: __tmp120071))))
    (define __compile-top
      (lambda (_stx115735_)
        (let ((__tmp120072 (gx#core-compile-top-syntax _stx115735_)))
          (declare (not safe))
          (__compile __tmp120072))))
    (define __eval-import
      (lambda (_in115716_)
        (letrec* ((_mods115718_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1115719_
                   (lambda (_in115726_ _phi115727_)
                     (if (gx#module-import? _in115726_)
                         (let ((_iphi115729_
                                (fx+ _phi115727_
                                     (gx#module-import-phi _in115726_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi115729_))
                               (let ((__tmp120074
                                      (gx#module-export-context
                                       (gx#module-import-source _in115726_))))
                                 (declare (not safe))
                                 (_eval1115720_ __tmp120074))
                               '#!void))
                         (if (gx#module-context? _in115726_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi115727_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1115720_ _in115726_))
                                 '#!void)
                             (if (gx#import-set? _in115726_)
                                 (let ((_iphi115731_
                                        (fx+ _phi115727_
                                             (gx#import-set-phi _in115726_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi115731_))
                                       (let ((__tmp120073
                                              (gx#import-set-source
                                               _in115726_)))
                                         (declare (not safe))
                                         (_eval1115720_ __tmp120073))
                                       (if (fxpositive? _iphi115731_)
                                           (for-each
                                            (lambda (_in115733_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1115719_
                                                 _in115733_
                                                 _iphi115731_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in115726_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in115726_))))))
                  (_eval1115720_
                   (lambda (_ctx115724_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods115718_ _ctx115724_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods115718_ _ctx115724_ '#t))
                           (__eval-module _ctx115724_))))))
          (if (let () (declare (not safe)) (pair? _in115716_))
              (for-each
               (lambda (_in115722_)
                 (let () (declare (not safe)) (_import1115719_ _in115722_ '0)))
               _in115716_)
              (let () (declare (not safe)) (_import1115719_ _in115716_ '0))))))
    (define __eval-module
      (lambda (_obj115709_)
        (let* ((_key115711_
                (if (gx#module-context? _obj115709_)
                    (gx#module-context-path _obj115709_)
                    _obj115709_))
               (_$e115713_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key115711_ '#f))))
          (if _$e115713_
              (values _$e115713_)
              (gx#core-eval-module _obj115709_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules115644_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home115646_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir115648_ (path-expand '"lib" _home115646_))
                     (_userpath115650_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath115652_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir115648_ '()))
                          (let ((__tmp120075
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir115648_ '()))))
                            (declare (not safe))
                            (cons _userpath115650_ __tmp120075))))
                     (_loadpath115661_
                      (let ((_$e115654_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e115654_
                            ((lambda (_envvar115657_)
                               (append (let ((__tmp120077
                                              (lambda (_x115659_)
                                                (let ((__tmp120078
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x115659_))))
                                                  (declare (not safe))
                                                  (not __tmp120078))))
                                             (__tmp120076
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar115657_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp120077 __tmp120076))
                                       _loadpath115652_))
                             _$e115654_)
                            _loadpath115652_))))
                (current-module-library-path _loadpath115661_))
              (let* ((_registry-entry115666_
                      (lambda (_m115664_)
                        (let ()
                          (declare (not safe))
                          (cons _m115664_ 'builtin))))
                     (_module-registry115706_
                      (let _lp115668_ ((_rest115670_ _builtin-modules115644_)
                                       (_registry115671_ '()))
                        (let* ((_rest115672115680_ _rest115670_)
                               (_else115674115688_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry115671_))))
                               (_K115676115694_
                                (lambda (_rest115691_ _mod115692_)
                                  (let ((__tmp120079
                                         (let ((__tmp120083
                                                (let ((__tmp120084
                                                       (string-append
                                                        _mod115692_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry115666_
                                                   __tmp120084)))
                                               (__tmp120080
                                                (let ((__tmp120081
                                                       (let ((__tmp120082
                                                              (string-append
                                                               _mod115692_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry115666_
                                                          __tmp120082))))
                                                  (declare (not safe))
                                                  (cons __tmp120081
                                                        _registry115671_))))
                                           (declare (not safe))
                                           (cons __tmp120083 __tmp120080))))
                                    (declare (not safe))
                                    (_lp115668_ _rest115691_ __tmp120079)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest115672115680_))
                              (let ((_hd115677115697_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest115672115680_)))
                                    (_tl115678115699_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest115672115680_))))
                                (let* ((_mod115702_ _hd115677115697_)
                                       (_rest115704_ _tl115678115699_))
                                  (declare (not safe))
                                  (_K115676115694_ _rest115704_ _mod115702_)))
                              (let ()
                                (declare (not safe))
                                (_else115674115688_)))))))
                (current-module-registry _module-registry115706_))
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
