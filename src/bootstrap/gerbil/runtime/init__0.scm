(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1709457369)
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
        (letrec* ((_+readtable+78933_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core78935_ (gx#import-module ':gerbil/core))
                 (_pre78937_ (gx#make-prelude-context _core78935_)))
            (gx#current-expander-module-prelude _pre78937_)
            (gx#core-bind-root-syntax! ':<core> _pre78937_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port78940_)
             (input-port-readtable-set! _port78940_ _+readtable+78933_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port78942_)
             (output-port-readtable-set!
              _port78942_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port78942_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline78930_) '#!void))
    (define load-scheme
      (lambda (_path78925_)
        (let ((__tmp78944
               (lambda ()
                 (let ((__tmp78945 (lambda _args78928_ '#f)))
                   (declare (not safe))
                   (##load _path78925_ __tmp78945 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp78944
           __loading-scheme-source
           _path78925_))))
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
      (lambda _paths78920_
        (apply add-library-load-path _paths78920_)
        (apply add-expander-load-path _paths78920_)))
    (define add-library-load-path
      (lambda _paths78909_
        (let* ((_current78911_ (current-module-library-path))
               (_paths78913_ (map path-expand _paths78909_))
               (_paths78917_
                (let ((__tmp78946
                       (lambda (_x78915_)
                         (let ((__tmp78947 (member _x78915_ _current78911_)))
                           (declare (not safe))
                           (not __tmp78947)))))
                  (declare (not safe))
                  (filter __tmp78946 _paths78913_))))
          (current-module-library-path (append _current78911_ _paths78917_)))))
    (define add-expander-load-path
      (lambda _paths78898_
        (let* ((_current78900_ (gx#current-expander-module-library-path))
               (_paths78902_ (map path-expand _paths78898_))
               (_paths78906_
                (let ((__tmp78948
                       (lambda (_x78904_)
                         (let ((__tmp78949 (member _x78904_ _current78900_)))
                           (declare (not safe))
                           (not __tmp78949)))))
                  (declare (not safe))
                  (filter __tmp78948 _paths78902_))))
          (gx#current-expander-module-library-path
           (append _current78900_ _paths78906_)))))
    (define cons-load-path
      (lambda _paths78896_
        (apply cons-library-load-path _paths78896_)
        (apply cons-expander-load-path _paths78896_)))
    (define cons-library-load-path
      (lambda _paths78891_
        (let ((_current78893_ (current-module-library-path))
              (_paths78894_ (map path-expand _paths78891_)))
          (current-module-library-path (append _paths78894_ _current78893_)))))
    (define cons-expander-load-path
      (lambda _paths78886_
        (let ((_current78888_ (gx#current-expander-module-library-path))
              (_paths78889_ (map path-expand _paths78886_)))
          (gx#current-expander-module-library-path
           (append _paths78889_ _current78888_)))))
    (define with-cons-load-path
      (lambda (_thunk78882_ . _paths78883_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk78882_
                        _paths78883_))
               _paths78883_)))
    (define with-cons-library-load-path
      (lambda (_thunk78875_ . _paths78876_)
        (let ((_current78878_ (current-module-library-path))
              (_paths78879_ (map path-expand _paths78876_)))
          (let ((__tmp78951 (lambda () (_thunk78875_)))
                (__tmp78950 (append _paths78879_ _current78878_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78951
             current-module-library-path
             __tmp78950)))))
    (define with-cons-expander-load-path
      (lambda (_thunk78868_ . _paths78869_)
        (let ((_current78871_ (gx#current-expander-module-library-path))
              (_paths78872_ (map path-expand _paths78869_)))
          (let ((__tmp78953 (lambda () (_thunk78868_)))
                (__tmp78952 (append _paths78872_ _current78871_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78953
             gx#current-expander-module-library-path
             __tmp78952)))))
    (define __expand-source
      (lambda (_src78854_)
        (letrec ((_expand78856_
                  (lambda (_src78866_)
                    (let ((__tmp78954
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src78866_)))))
                      (declare (not safe))
                      (__compile-top __tmp78954))))
                 (_no-expand78857_
                  (lambda (_src78862_)
                    (if (__loading-scheme-source)
                        _src78862_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src78862_))
                            (let ((_code78864_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src78862_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code78864_))
                                  (if (let ((__tmp78955
                                             (let ()
                                               (declare (not safe))
                                               (##car _code78864_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp78955))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code78864_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e78859_
                 (let () (declare (not safe)) (_no-expand78857_ _src78854_))))
            (if _$e78859_
                _$e78859_
                (let () (declare (not safe)) (_expand78856_ _src78854_)))))))
    (define __macro-descr
      (lambda (_src78840_ _def-syntax?78841_)
        (letrec ((_fail!78843_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src78840_))))
                 (_make-descr78844_
                  (lambda (_size78848_)
                    (let ((_expander78851_
                           (let ((__tmp78956
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src78840_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp78956
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander78851_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?78841_
                             _size78848_
                             _expander78851_
                             _src78840_))
                          (let () (declare (not safe)) (_fail!78843_)))))))
          (if _def-syntax?78841_
              (let () (declare (not safe)) (_make-descr78844_ '-1))
              (let ((_code78846_
                     (let () (declare (not safe)) (##source-code _src78840_))))
                (if (and (let () (declare (not safe)) (##pair? _code78846_))
                         (let ((__tmp78960
                                (let ((__tmp78961
                                       (let ((__tmp78962
                                              (let ()
                                                (declare (not safe))
                                                (##car _code78846_))))
                                         (declare (not safe))
                                         (##sourcify __tmp78962 _src78840_))))
                                  (declare (not safe))
                                  (##source-code __tmp78961))))
                           (declare (not safe))
                           (##memq __tmp78960 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src78840_ _src78840_ '-3))
                      (let ((__tmp78957
                             (let ((__tmp78958
                                    (let ((__tmp78959
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code78846_))))
                                      (declare (not safe))
                                      (##sourcify __tmp78959 _src78840_))))
                               (declare (not safe))
                               (##form-size __tmp78958))))
                        (declare (not safe))
                        (_make-descr78844_ __tmp78957)))
                    (let () (declare (not safe)) (_fail!78843_))))))))
    (define __source->syntax
      (lambda (_src78834_)
        (let _recur78836_ ((_e78838_ _src78834_))
          (if (let () (declare (not safe)) (##source? _e78838_))
              (let ((__tmp78970
                     (let ((__tmp78971
                            (let ()
                              (declare (not safe))
                              (##source-code _e78838_))))
                       (declare (not safe))
                       (_recur78836_ __tmp78971)))
                    (__tmp78969
                     (let () (declare (not safe)) (##source-locat _e78838_))))
                (declare (not safe))
                (##structure AST::t __tmp78970 __tmp78969))
              (if (let () (declare (not safe)) (pair? _e78838_))
                  (let ((__tmp78967
                         (let ((__tmp78968
                                (let ()
                                  (declare (not safe))
                                  (##car _e78838_))))
                           (declare (not safe))
                           (_recur78836_ __tmp78968)))
                        (__tmp78965
                         (let ((__tmp78966
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e78838_))))
                           (declare (not safe))
                           (_recur78836_ __tmp78966))))
                    (declare (not safe))
                    (cons __tmp78967 __tmp78965))
                  (if (let () (declare (not safe)) (vector? _e78838_))
                      (vector-map _recur78836_ _e78838_)
                      (if (let () (declare (not safe)) (box? _e78838_))
                          (let ((__tmp78963
                                 (let ((__tmp78964 (unbox _e78838_)))
                                   (declare (not safe))
                                   (_recur78836_ __tmp78964))))
                            (declare (not safe))
                            (box __tmp78963))
                          _e78838_)))))))
    (define __compile-top-source
      (lambda (_stx78832_)
        (let ((__tmp78972
               (let () (declare (not safe)) (__compile-top _stx78832_))))
          (declare (not safe))
          (cons '__noexpand: __tmp78972))))
    (define __compile-top
      (lambda (_stx78830_)
        (let ((__tmp78973 (gx#core-compile-top-syntax _stx78830_)))
          (declare (not safe))
          (__compile __tmp78973))))
    (define __eval-import
      (lambda (_in78811_)
        (letrec* ((_mods78813_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import178814_
                   (lambda (_in78821_ _phi78822_)
                     (if (gx#module-import? _in78821_)
                         (let ((_iphi78824_
                                (fx+ _phi78822_
                                     (gx#module-import-phi _in78821_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi78824_))
                               (let ((__tmp78975
                                      (gx#module-export-context
                                       (gx#module-import-source _in78821_))))
                                 (declare (not safe))
                                 (_eval178815_ __tmp78975))
                               '#!void))
                         (if (gx#module-context? _in78821_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi78822_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval178815_ _in78821_))
                                 '#!void)
                             (if (gx#import-set? _in78821_)
                                 (let ((_iphi78826_
                                        (fx+ _phi78822_
                                             (gx#import-set-phi _in78821_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi78826_))
                                       (let ((__tmp78974
                                              (gx#import-set-source
                                               _in78821_)))
                                         (declare (not safe))
                                         (_eval178815_ __tmp78974))
                                       (if (fxpositive? _iphi78826_)
                                           (for-each
                                            (lambda (_in78828_)
                                              (let ()
                                                (declare (not safe))
                                                (_import178814_
                                                 _in78828_
                                                 _iphi78826_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in78821_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in78821_)))))))
                  (_eval178815_
                   (lambda (_ctx78819_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods78813_ _ctx78819_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods78813_ _ctx78819_ '#t))
                           (__eval-module _ctx78819_))))))
          (if (let () (declare (not safe)) (pair? _in78811_))
              (for-each
               (lambda (_in78817_)
                 (let () (declare (not safe)) (_import178814_ _in78817_ '0)))
               _in78811_)
              (let () (declare (not safe)) (_import178814_ _in78811_ '0))))))
    (define __eval-module
      (lambda (_obj78809_) (gx#core-eval-module _obj78809_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules78744_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home78746_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir78748_ (path-expand '"lib" _home78746_))
                     (_userpath78750_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath78752_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir78748_ '()))
                          (let ((__tmp78976
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir78748_ '()))))
                            (declare (not safe))
                            (cons _userpath78750_ __tmp78976))))
                     (_loadpath78761_
                      (let ((_$e78754_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e78754_
                            ((lambda (_envvar78757_)
                               (append (let ((__tmp78978
                                              (lambda (_x78759_)
                                                (let ((__tmp78979
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x78759_))))
                                                  (declare (not safe))
                                                  (not __tmp78979))))
                                             (__tmp78977
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar78757_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp78978 __tmp78977))
                                       _loadpath78752_))
                             _$e78754_)
                            _loadpath78752_))))
                (current-module-library-path _loadpath78761_))
              (let* ((_registry-entry78766_
                      (lambda (_m78764_)
                        (let ()
                          (declare (not safe))
                          (cons _m78764_ 'builtin))))
                     (_module-registry78806_
                      (let _lp78768_ ((_rest78770_ _builtin-modules78744_)
                                      (_registry78771_ '()))
                        (let* ((_rest7877278780_ _rest78770_)
                               (_else7877478788_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry78771_))))
                               (_K7877678794_
                                (lambda (_rest78791_ _mod78792_)
                                  (let ((__tmp78980
                                         (let ((__tmp78984
                                                (let ((__tmp78985
                                                       (string-append
                                                        _mod78792_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry78766_
                                                   __tmp78985)))
                                               (__tmp78981
                                                (let ((__tmp78982
                                                       (let ((__tmp78983
                                                              (string-append
                                                               _mod78792_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry78766_
                                                          __tmp78983))))
                                                  (declare (not safe))
                                                  (cons __tmp78982
                                                        _registry78771_))))
                                           (declare (not safe))
                                           (cons __tmp78984 __tmp78981))))
                                    (declare (not safe))
                                    (_lp78768_ _rest78791_ __tmp78980)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7877278780_))
                              (let ((_hd7877778797_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7877278780_)))
                                    (_tl7877878799_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7877278780_))))
                                (let* ((_mod78802_ _hd7877778797_)
                                       (_rest78804_ _tl7877878799_))
                                  (declare (not safe))
                                  (_K7877678794_ _rest78804_ _mod78802_)))
                              (let ()
                                (declare (not safe))
                                (_else7877478788_)))))))
                (current-module-registry _module-registry78806_))
              (current-readtable __*readtable*)
              (random-source-randomize! default-random-source)
              (set! __runtime-initialized '#t)))))
    (define __expander-loaded '#f)
    (define __runtime-initialized '#f)
    (define gerbil-load-expander!
      (lambda ()
        (if __runtime-initialized
            '#!void
            (let ()
              (declare (not safe))
              (error '"runtime has not been initialized")))
        (if __expander-loaded
            '#!void
            (begin
              (let () (declare (not safe)) (__load-gxi))
              (set! __expander-loaded '#t)))))))
