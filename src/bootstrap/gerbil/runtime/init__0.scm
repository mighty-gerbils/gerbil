(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707415535)
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
        (letrec* ((_+readtable+115908_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core115910_ (gx#import-module ':gerbil/core))
                 (_pre115912_ (gx#make-prelude-context _core115910_)))
            (gx#current-expander-module-prelude _pre115912_)
            (gx#core-bind-root-syntax! ':<core> _pre115912_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port115915_)
             (input-port-readtable-set! _port115915_ _+readtable+115908_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port115917_)
             (output-port-readtable-set!
              _port115917_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port115917_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline115905_) '#!void))
    (define load-scheme
      (lambda (_path115900_)
        (let ((__tmp120113
               (lambda ()
                 (let ((__tmp120114 (lambda _args115903_ '#f)))
                   (declare (not safe))
                   (##load _path115900_ __tmp120114 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp120113
           __loading-scheme-source
           _path115900_))))
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
      (lambda _paths115895_
        (apply add-library-load-path _paths115895_)
        (apply add-expander-load-path _paths115895_)))
    (define add-library-load-path
      (lambda _paths115884_
        (let* ((_current115886_ (current-module-library-path))
               (_paths115888_ (map path-expand _paths115884_))
               (_paths115892_
                (let ((__tmp120115
                       (lambda (_x115890_)
                         (let ((__tmp120116
                                (member _x115890_ _current115886_)))
                           (declare (not safe))
                           (not __tmp120116)))))
                  (declare (not safe))
                  (filter __tmp120115 _paths115888_))))
          (current-module-library-path
           (append _current115886_ _paths115892_)))))
    (define add-expander-load-path
      (lambda _paths115873_
        (let* ((_current115875_ (gx#current-expander-module-library-path))
               (_paths115877_ (map path-expand _paths115873_))
               (_paths115881_
                (let ((__tmp120117
                       (lambda (_x115879_)
                         (let ((__tmp120118
                                (member _x115879_ _current115875_)))
                           (declare (not safe))
                           (not __tmp120118)))))
                  (declare (not safe))
                  (filter __tmp120117 _paths115877_))))
          (gx#current-expander-module-library-path
           (append _current115875_ _paths115881_)))))
    (define cons-load-path
      (lambda _paths115871_
        (apply cons-library-load-path _paths115871_)
        (apply cons-expander-load-path _paths115871_)))
    (define cons-library-load-path
      (lambda _paths115866_
        (let ((_current115868_ (current-module-library-path))
              (_paths115869_ (map path-expand _paths115866_)))
          (current-module-library-path
           (append _paths115869_ _current115868_)))))
    (define cons-expander-load-path
      (lambda _paths115861_
        (let ((_current115863_ (gx#current-expander-module-library-path))
              (_paths115864_ (map path-expand _paths115861_)))
          (gx#current-expander-module-library-path
           (append _paths115864_ _current115863_)))))
    (define with-cons-load-path
      (lambda (_thunk115857_ . _paths115858_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk115857_
                        _paths115858_))
               _paths115858_)))
    (define with-cons-library-load-path
      (lambda (_thunk115850_ . _paths115851_)
        (let ((_current115853_ (current-module-library-path))
              (_paths115854_ (map path-expand _paths115851_)))
          (let ((__tmp120120 (lambda () (_thunk115850_)))
                (__tmp120119 (append _paths115854_ _current115853_)))
            (declare (not safe))
            (call-with-parameters
             __tmp120120
             current-module-library-path
             __tmp120119)))))
    (define with-cons-expander-load-path
      (lambda (_thunk115843_ . _paths115844_)
        (let ((_current115846_ (gx#current-expander-module-library-path))
              (_paths115847_ (map path-expand _paths115844_)))
          (let ((__tmp120122 (lambda () (_thunk115843_)))
                (__tmp120121 (append _paths115847_ _current115846_)))
            (declare (not safe))
            (call-with-parameters
             __tmp120122
             gx#current-expander-module-library-path
             __tmp120121)))))
    (define __expand-source
      (lambda (_src115829_)
        (letrec ((_expand115831_
                  (lambda (_src115841_)
                    (let ((__tmp120123
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src115841_)))))
                      (declare (not safe))
                      (__compile-top __tmp120123))))
                 (_no-expand115832_
                  (lambda (_src115837_)
                    (if (__loading-scheme-source)
                        _src115837_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src115837_))
                            (let ((_code115839_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src115837_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code115839_))
                                  (if (let ((__tmp120124
                                             (let ()
                                               (declare (not safe))
                                               (##car _code115839_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp120124))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code115839_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e115834_
                 (let ()
                   (declare (not safe))
                   (_no-expand115832_ _src115829_))))
            (if _$e115834_
                _$e115834_
                (let () (declare (not safe)) (_expand115831_ _src115829_)))))))
    (define __macro-descr
      (lambda (_src115815_ _def-syntax?115816_)
        (letrec ((_fail!115818_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src115815_))))
                 (_make-descr115819_
                  (lambda (_size115823_)
                    (let ((_expander115826_
                           (let ((__tmp120125
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src115815_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp120125
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander115826_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?115816_
                             _size115823_
                             _expander115826_
                             _src115815_))
                          (let () (declare (not safe)) (_fail!115818_)))))))
          (if _def-syntax?115816_
              (let () (declare (not safe)) (_make-descr115819_ '-1))
              (let ((_code115821_
                     (let ()
                       (declare (not safe))
                       (##source-code _src115815_))))
                (if (and (let () (declare (not safe)) (##pair? _code115821_))
                         (let ((__tmp120129
                                (let ((__tmp120130
                                       (let ((__tmp120131
                                              (let ()
                                                (declare (not safe))
                                                (##car _code115821_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp120131
                                          _src115815_))))
                                  (declare (not safe))
                                  (##source-code __tmp120130))))
                           (declare (not safe))
                           (##memq __tmp120129 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src115815_ _src115815_ '-3))
                      (let ((__tmp120126
                             (let ((__tmp120127
                                    (let ((__tmp120128
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code115821_))))
                                      (declare (not safe))
                                      (##sourcify __tmp120128 _src115815_))))
                               (declare (not safe))
                               (##form-size __tmp120127))))
                        (declare (not safe))
                        (_make-descr115819_ __tmp120126)))
                    (let () (declare (not safe)) (_fail!115818_))))))))
    (define __source->syntax
      (lambda (_src115809_)
        (let _recur115811_ ((_e115813_ _src115809_))
          (if (let () (declare (not safe)) (##source? _e115813_))
              (let ((__tmp120139
                     (let ((__tmp120140
                            (let ()
                              (declare (not safe))
                              (##source-code _e115813_))))
                       (declare (not safe))
                       (_recur115811_ __tmp120140)))
                    (__tmp120138
                     (let () (declare (not safe)) (##source-locat _e115813_))))
                (declare (not safe))
                (##structure AST::t __tmp120139 __tmp120138))
              (if (let () (declare (not safe)) (pair? _e115813_))
                  (let ((__tmp120136
                         (let ((__tmp120137
                                (let ()
                                  (declare (not safe))
                                  (##car _e115813_))))
                           (declare (not safe))
                           (_recur115811_ __tmp120137)))
                        (__tmp120134
                         (let ((__tmp120135
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e115813_))))
                           (declare (not safe))
                           (_recur115811_ __tmp120135))))
                    (declare (not safe))
                    (cons __tmp120136 __tmp120134))
                  (if (let () (declare (not safe)) (vector? _e115813_))
                      (vector-map _recur115811_ _e115813_)
                      (if (let () (declare (not safe)) (box? _e115813_))
                          (let ((__tmp120132
                                 (let ((__tmp120133 (unbox _e115813_)))
                                   (declare (not safe))
                                   (_recur115811_ __tmp120133))))
                            (declare (not safe))
                            (box __tmp120132))
                          _e115813_)))))))
    (define __compile-top-source
      (lambda (_stx115807_)
        (let ((__tmp120141
               (let () (declare (not safe)) (__compile-top _stx115807_))))
          (declare (not safe))
          (cons '__noexpand: __tmp120141))))
    (define __compile-top
      (lambda (_stx115805_)
        (let ((__tmp120142 (gx#core-compile-top-syntax _stx115805_)))
          (declare (not safe))
          (__compile __tmp120142))))
    (define __eval-import
      (lambda (_in115786_)
        (letrec* ((_mods115788_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1115789_
                   (lambda (_in115796_ _phi115797_)
                     (if (gx#module-import? _in115796_)
                         (let ((_iphi115799_
                                (fx+ _phi115797_
                                     (gx#module-import-phi _in115796_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi115799_))
                               (let ((__tmp120144
                                      (gx#module-export-context
                                       (gx#module-import-source _in115796_))))
                                 (declare (not safe))
                                 (_eval1115790_ __tmp120144))
                               '#!void))
                         (if (gx#module-context? _in115796_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi115797_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1115790_ _in115796_))
                                 '#!void)
                             (if (gx#import-set? _in115796_)
                                 (let ((_iphi115801_
                                        (fx+ _phi115797_
                                             (gx#import-set-phi _in115796_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi115801_))
                                       (let ((__tmp120143
                                              (gx#import-set-source
                                               _in115796_)))
                                         (declare (not safe))
                                         (_eval1115790_ __tmp120143))
                                       (if (fxpositive? _iphi115801_)
                                           (for-each
                                            (lambda (_in115803_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1115789_
                                                 _in115803_
                                                 _iphi115801_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in115796_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in115796_))))))
                  (_eval1115790_
                   (lambda (_ctx115794_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods115788_ _ctx115794_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods115788_ _ctx115794_ '#t))
                           (__eval-module _ctx115794_))))))
          (if (let () (declare (not safe)) (pair? _in115786_))
              (for-each
               (lambda (_in115792_)
                 (let () (declare (not safe)) (_import1115789_ _in115792_ '0)))
               _in115786_)
              (let () (declare (not safe)) (_import1115789_ _in115786_ '0))))))
    (define __eval-module
      (lambda (_obj115779_)
        (let* ((_key115781_
                (if (gx#module-context? _obj115779_)
                    (gx#module-context-path _obj115779_)
                    _obj115779_))
               (_$e115783_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key115781_ '#f))))
          (if _$e115783_
              (values _$e115783_)
              (gx#core-eval-module _obj115779_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules115714_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home115716_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir115718_ (path-expand '"lib" _home115716_))
                     (_userpath115720_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath115722_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir115718_ '()))
                          (let ((__tmp120145
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir115718_ '()))))
                            (declare (not safe))
                            (cons _userpath115720_ __tmp120145))))
                     (_loadpath115731_
                      (let ((_$e115724_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e115724_
                            ((lambda (_envvar115727_)
                               (append (let ((__tmp120147
                                              (lambda (_x115729_)
                                                (let ((__tmp120148
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x115729_))))
                                                  (declare (not safe))
                                                  (not __tmp120148))))
                                             (__tmp120146
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar115727_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp120147 __tmp120146))
                                       _loadpath115722_))
                             _$e115724_)
                            _loadpath115722_))))
                (current-module-library-path _loadpath115731_))
              (let* ((_registry-entry115736_
                      (lambda (_m115734_)
                        (let ()
                          (declare (not safe))
                          (cons _m115734_ 'builtin))))
                     (_module-registry115776_
                      (let _lp115738_ ((_rest115740_ _builtin-modules115714_)
                                       (_registry115741_ '()))
                        (let* ((_rest115742115750_ _rest115740_)
                               (_else115744115758_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry115741_))))
                               (_K115746115764_
                                (lambda (_rest115761_ _mod115762_)
                                  (let ((__tmp120149
                                         (let ((__tmp120153
                                                (let ((__tmp120154
                                                       (string-append
                                                        _mod115762_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry115736_
                                                   __tmp120154)))
                                               (__tmp120150
                                                (let ((__tmp120151
                                                       (let ((__tmp120152
                                                              (string-append
                                                               _mod115762_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry115736_
                                                          __tmp120152))))
                                                  (declare (not safe))
                                                  (cons __tmp120151
                                                        _registry115741_))))
                                           (declare (not safe))
                                           (cons __tmp120153 __tmp120150))))
                                    (declare (not safe))
                                    (_lp115738_ _rest115761_ __tmp120149)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest115742115750_))
                              (let ((_hd115747115767_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest115742115750_)))
                                    (_tl115748115769_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest115742115750_))))
                                (let* ((_mod115772_ _hd115747115767_)
                                       (_rest115774_ _tl115748115769_))
                                  (declare (not safe))
                                  (_K115746115764_ _rest115774_ _mod115772_)))
                              (let ()
                                (declare (not safe))
                                (_else115744115758_)))))))
                (current-module-registry _module-registry115776_))
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
