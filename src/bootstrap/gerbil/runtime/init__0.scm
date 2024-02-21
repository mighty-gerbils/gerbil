(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708510101)
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
        (letrec* ((_+readtable+78014_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core78016_ (gx#import-module ':gerbil/core))
                 (_pre78018_ (gx#make-prelude-context _core78016_)))
            (gx#current-expander-module-prelude _pre78018_)
            (gx#core-bind-root-syntax! ':<core> _pre78018_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port78021_)
             (input-port-readtable-set! _port78021_ _+readtable+78014_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port78023_)
             (output-port-readtable-set!
              _port78023_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port78023_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline78011_) '#!void))
    (define load-scheme
      (lambda (_path78006_)
        (let ((__tmp78025
               (lambda ()
                 (let ((__tmp78026 (lambda _args78009_ '#f)))
                   (declare (not safe))
                   (##load _path78006_ __tmp78026 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp78025
           __loading-scheme-source
           _path78006_))))
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
      (lambda _paths78001_
        (apply add-library-load-path _paths78001_)
        (apply add-expander-load-path _paths78001_)))
    (define add-library-load-path
      (lambda _paths77990_
        (let* ((_current77992_ (current-module-library-path))
               (_paths77994_ (map path-expand _paths77990_))
               (_paths77998_
                (let ((__tmp78027
                       (lambda (_x77996_)
                         (let ((__tmp78028 (member _x77996_ _current77992_)))
                           (declare (not safe))
                           (not __tmp78028)))))
                  (declare (not safe))
                  (filter __tmp78027 _paths77994_))))
          (current-module-library-path (append _current77992_ _paths77998_)))))
    (define add-expander-load-path
      (lambda _paths77979_
        (let* ((_current77981_ (gx#current-expander-module-library-path))
               (_paths77983_ (map path-expand _paths77979_))
               (_paths77987_
                (let ((__tmp78029
                       (lambda (_x77985_)
                         (let ((__tmp78030 (member _x77985_ _current77981_)))
                           (declare (not safe))
                           (not __tmp78030)))))
                  (declare (not safe))
                  (filter __tmp78029 _paths77983_))))
          (gx#current-expander-module-library-path
           (append _current77981_ _paths77987_)))))
    (define cons-load-path
      (lambda _paths77977_
        (apply cons-library-load-path _paths77977_)
        (apply cons-expander-load-path _paths77977_)))
    (define cons-library-load-path
      (lambda _paths77972_
        (let ((_current77974_ (current-module-library-path))
              (_paths77975_ (map path-expand _paths77972_)))
          (current-module-library-path (append _paths77975_ _current77974_)))))
    (define cons-expander-load-path
      (lambda _paths77967_
        (let ((_current77969_ (gx#current-expander-module-library-path))
              (_paths77970_ (map path-expand _paths77967_)))
          (gx#current-expander-module-library-path
           (append _paths77970_ _current77969_)))))
    (define with-cons-load-path
      (lambda (_thunk77963_ . _paths77964_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk77963_
                        _paths77964_))
               _paths77964_)))
    (define with-cons-library-load-path
      (lambda (_thunk77956_ . _paths77957_)
        (let ((_current77959_ (current-module-library-path))
              (_paths77960_ (map path-expand _paths77957_)))
          (let ((__tmp78032 (lambda () (_thunk77956_)))
                (__tmp78031 (append _paths77960_ _current77959_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78032
             current-module-library-path
             __tmp78031)))))
    (define with-cons-expander-load-path
      (lambda (_thunk77949_ . _paths77950_)
        (let ((_current77952_ (gx#current-expander-module-library-path))
              (_paths77953_ (map path-expand _paths77950_)))
          (let ((__tmp78034 (lambda () (_thunk77949_)))
                (__tmp78033 (append _paths77953_ _current77952_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78034
             gx#current-expander-module-library-path
             __tmp78033)))))
    (define __expand-source
      (lambda (_src77935_)
        (letrec ((_expand77937_
                  (lambda (_src77947_)
                    (let ((__tmp78035
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src77947_)))))
                      (declare (not safe))
                      (__compile-top __tmp78035))))
                 (_no-expand77938_
                  (lambda (_src77943_)
                    (if (__loading-scheme-source)
                        _src77943_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src77943_))
                            (let ((_code77945_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src77943_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code77945_))
                                  (if (let ((__tmp78036
                                             (let ()
                                               (declare (not safe))
                                               (##car _code77945_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp78036))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code77945_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e77940_
                 (let () (declare (not safe)) (_no-expand77938_ _src77935_))))
            (if _$e77940_
                _$e77940_
                (let () (declare (not safe)) (_expand77937_ _src77935_)))))))
    (define __macro-descr
      (lambda (_src77921_ _def-syntax?77922_)
        (letrec ((_fail!77924_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src77921_))))
                 (_make-descr77925_
                  (lambda (_size77929_)
                    (let ((_expander77932_
                           (let ((__tmp78037
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src77921_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp78037
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander77932_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?77922_
                             _size77929_
                             _expander77932_
                             _src77921_))
                          (let () (declare (not safe)) (_fail!77924_)))))))
          (if _def-syntax?77922_
              (let () (declare (not safe)) (_make-descr77925_ '-1))
              (let ((_code77927_
                     (let () (declare (not safe)) (##source-code _src77921_))))
                (if (and (let () (declare (not safe)) (##pair? _code77927_))
                         (let ((__tmp78041
                                (let ((__tmp78042
                                       (let ((__tmp78043
                                              (let ()
                                                (declare (not safe))
                                                (##car _code77927_))))
                                         (declare (not safe))
                                         (##sourcify __tmp78043 _src77921_))))
                                  (declare (not safe))
                                  (##source-code __tmp78042))))
                           (declare (not safe))
                           (##memq __tmp78041 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src77921_ _src77921_ '-3))
                      (let ((__tmp78038
                             (let ((__tmp78039
                                    (let ((__tmp78040
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code77927_))))
                                      (declare (not safe))
                                      (##sourcify __tmp78040 _src77921_))))
                               (declare (not safe))
                               (##form-size __tmp78039))))
                        (declare (not safe))
                        (_make-descr77925_ __tmp78038)))
                    (let () (declare (not safe)) (_fail!77924_))))))))
    (define __source->syntax
      (lambda (_src77915_)
        (let _recur77917_ ((_e77919_ _src77915_))
          (if (let () (declare (not safe)) (##source? _e77919_))
              (let ((__tmp78051
                     (let ((__tmp78052
                            (let ()
                              (declare (not safe))
                              (##source-code _e77919_))))
                       (declare (not safe))
                       (_recur77917_ __tmp78052)))
                    (__tmp78050
                     (let () (declare (not safe)) (##source-locat _e77919_))))
                (declare (not safe))
                (##structure AST::t __tmp78051 __tmp78050))
              (if (let () (declare (not safe)) (pair? _e77919_))
                  (let ((__tmp78048
                         (let ((__tmp78049
                                (let ()
                                  (declare (not safe))
                                  (##car _e77919_))))
                           (declare (not safe))
                           (_recur77917_ __tmp78049)))
                        (__tmp78046
                         (let ((__tmp78047
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e77919_))))
                           (declare (not safe))
                           (_recur77917_ __tmp78047))))
                    (declare (not safe))
                    (cons __tmp78048 __tmp78046))
                  (if (let () (declare (not safe)) (vector? _e77919_))
                      (vector-map _recur77917_ _e77919_)
                      (if (let () (declare (not safe)) (box? _e77919_))
                          (let ((__tmp78044
                                 (let ((__tmp78045 (unbox _e77919_)))
                                   (declare (not safe))
                                   (_recur77917_ __tmp78045))))
                            (declare (not safe))
                            (box __tmp78044))
                          _e77919_)))))))
    (define __compile-top-source
      (lambda (_stx77913_)
        (let ((__tmp78053
               (let () (declare (not safe)) (__compile-top _stx77913_))))
          (declare (not safe))
          (cons '__noexpand: __tmp78053))))
    (define __compile-top
      (lambda (_stx77911_)
        (let ((__tmp78054 (gx#core-compile-top-syntax _stx77911_)))
          (declare (not safe))
          (__compile __tmp78054))))
    (define __eval-import
      (lambda (_in77892_)
        (letrec* ((_mods77894_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import177895_
                   (lambda (_in77902_ _phi77903_)
                     (if (gx#module-import? _in77902_)
                         (let ((_iphi77905_
                                (fx+ _phi77903_
                                     (gx#module-import-phi _in77902_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi77905_))
                               (let ((__tmp78056
                                      (gx#module-export-context
                                       (gx#module-import-source _in77902_))))
                                 (declare (not safe))
                                 (_eval177896_ __tmp78056))
                               '#!void))
                         (if (gx#module-context? _in77902_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi77903_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval177896_ _in77902_))
                                 '#!void)
                             (if (gx#import-set? _in77902_)
                                 (let ((_iphi77907_
                                        (fx+ _phi77903_
                                             (gx#import-set-phi _in77902_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi77907_))
                                       (let ((__tmp78055
                                              (gx#import-set-source
                                               _in77902_)))
                                         (declare (not safe))
                                         (_eval177896_ __tmp78055))
                                       (if (fxpositive? _iphi77907_)
                                           (for-each
                                            (lambda (_in77909_)
                                              (let ()
                                                (declare (not safe))
                                                (_import177895_
                                                 _in77909_
                                                 _iphi77907_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in77902_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in77902_)))))))
                  (_eval177896_
                   (lambda (_ctx77900_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods77894_ _ctx77900_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods77894_ _ctx77900_ '#t))
                           (__eval-module _ctx77900_))))))
          (if (let () (declare (not safe)) (pair? _in77892_))
              (for-each
               (lambda (_in77898_)
                 (let () (declare (not safe)) (_import177895_ _in77898_ '0)))
               _in77892_)
              (let () (declare (not safe)) (_import177895_ _in77892_ '0))))))
    (define __eval-module
      (lambda (_obj77890_) (gx#core-eval-module _obj77890_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules77825_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home77827_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir77829_ (path-expand '"lib" _home77827_))
                     (_userpath77831_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath77833_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir77829_ '()))
                          (let ((__tmp78057
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir77829_ '()))))
                            (declare (not safe))
                            (cons _userpath77831_ __tmp78057))))
                     (_loadpath77842_
                      (let ((_$e77835_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e77835_
                            ((lambda (_envvar77838_)
                               (append (let ((__tmp78059
                                              (lambda (_x77840_)
                                                (let ((__tmp78060
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x77840_))))
                                                  (declare (not safe))
                                                  (not __tmp78060))))
                                             (__tmp78058
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar77838_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp78059 __tmp78058))
                                       _loadpath77833_))
                             _$e77835_)
                            _loadpath77833_))))
                (current-module-library-path _loadpath77842_))
              (let* ((_registry-entry77847_
                      (lambda (_m77845_)
                        (let ()
                          (declare (not safe))
                          (cons _m77845_ 'builtin))))
                     (_module-registry77887_
                      (let _lp77849_ ((_rest77851_ _builtin-modules77825_)
                                      (_registry77852_ '()))
                        (let* ((_rest7785377861_ _rest77851_)
                               (_else7785577869_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry77852_))))
                               (_K7785777875_
                                (lambda (_rest77872_ _mod77873_)
                                  (let ((__tmp78061
                                         (let ((__tmp78065
                                                (let ((__tmp78066
                                                       (string-append
                                                        _mod77873_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry77847_
                                                   __tmp78066)))
                                               (__tmp78062
                                                (let ((__tmp78063
                                                       (let ((__tmp78064
                                                              (string-append
                                                               _mod77873_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry77847_
                                                          __tmp78064))))
                                                  (declare (not safe))
                                                  (cons __tmp78063
                                                        _registry77852_))))
                                           (declare (not safe))
                                           (cons __tmp78065 __tmp78062))))
                                    (declare (not safe))
                                    (_lp77849_ _rest77872_ __tmp78061)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7785377861_))
                              (let ((_hd7785877878_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7785377861_)))
                                    (_tl7785977880_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7785377861_))))
                                (let* ((_mod77883_ _hd7785877878_)
                                       (_rest77885_ _tl7785977880_))
                                  (declare (not safe))
                                  (_K7785777875_ _rest77885_ _mod77883_)))
                              (let ()
                                (declare (not safe))
                                (_else7785577869_)))))))
                (current-module-registry _module-registry77887_))
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
