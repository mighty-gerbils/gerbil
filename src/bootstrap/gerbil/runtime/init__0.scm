(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1695206877)
  (begin
    (define __loading-scheme-source (make-parameter '#f))
    (define __init-gx!
      (lambda ()
        (gx#current-expander-marks '())
        (gx#current-expander-phi '0)
        (gx#current-expander-context (gx#make-top-context))
        (gx#current-expander-module-library-path (current-module-library-path))
        (gx#current-expander-module-registry (make-table))
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
        (letrec* ((_+readtable+16103_ __*readtable*))
          (__init-gx!)
          (let* ((_core16105_ (gx#import-module ':gerbil/core))
                 (_pre16107_ (gx#make-prelude-context _core16105_)))
            (gx#current-expander-module-prelude _pre16107_)
            (gx#core-bind-root-syntax! ':<core> _pre16107_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port16110_)
             (input-port-readtable-set! _port16110_ _+readtable+16103_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port16112_)
             (output-port-readtable-set!
              _port16112_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port16112_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline16100_) '#!void))
    (define load-scheme
      (lambda (_path16095_)
        (call-with-parameters
         (lambda ()
           (let ((__tmp16114 (lambda _args16098_ '#f)))
             (declare (not safe))
             (##load _path16095_ __tmp16114 '#t '#t '#f)))
         __loading-scheme-source
         _path16095_)))
    (define load-path
      (lambda ()
        (values (current-module-library-path)
                (gx#current-expander-module-library-path))))
    (define library-load-path (lambda () (current-module-library-path)))
    (define expander-load-path
      (lambda () (gx#current-expander-module-library-path)))
    (define add-load-path
      (lambda _paths16090_
        (apply add-library-load-path _paths16090_)
        (apply add-expander-load-path _paths16090_)))
    (define add-library-load-path
      (lambda _paths16079_
        (let* ((_current16081_ (current-module-library-path))
               (_paths16083_ (map path-expand _paths16079_))
               (_paths16087_
                (filter (lambda (_x16085_)
                          (not (member _x16085_ _current16081_)))
                        _paths16083_)))
          (current-module-library-path (append _current16081_ _paths16087_)))))
    (define add-expander-load-path
      (lambda _paths16068_
        (let* ((_current16070_ (gx#current-expander-module-library-path))
               (_paths16072_ (map path-expand _paths16068_))
               (_paths16076_
                (filter (lambda (_x16074_)
                          (not (member _x16074_ _current16070_)))
                        _paths16072_)))
          (gx#current-expander-module-library-path
           (append _current16070_ _paths16076_)))))
    (define cons-load-path
      (lambda _paths16066_
        (apply cons-library-load-path _paths16066_)
        (apply cons-expander-load-path _paths16066_)))
    (define cons-library-load-path
      (lambda _paths16061_
        (let ((_current16063_ (current-module-library-path))
              (_paths16064_ (map path-expand _paths16061_)))
          (current-module-library-path (append _paths16064_ _current16063_)))))
    (define cons-expander-load-path
      (lambda _paths16056_
        (let ((_current16058_ (gx#current-expander-module-library-path))
              (_paths16059_ (map path-expand _paths16056_)))
          (gx#current-expander-module-library-path
           (append _paths16059_ _current16058_)))))
    (define with-cons-load-path
      (lambda (_thunk16052_ . _paths16053_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk16052_
                        _paths16053_))
               _paths16053_)))
    (define with-cons-library-load-path
      (lambda (_thunk16045_ . _paths16046_)
        (let ((_current16048_ (current-module-library-path))
              (_paths16049_ (map path-expand _paths16046_)))
          (call-with-parameters
           (lambda () (_thunk16045_))
           current-module-library-path
           (append _paths16049_ _current16048_)))))
    (define with-cons-expander-load-path
      (lambda (_thunk16038_ . _paths16039_)
        (let ((_current16041_ (gx#current-expander-module-library-path))
              (_paths16042_ (map path-expand _paths16039_)))
          (call-with-parameters
           (lambda () (_thunk16038_))
           gx#current-expander-module-library-path
           (append _paths16042_ _current16041_)))))
    (define __expand-source
      (lambda (_src16024_)
        (letrec ((_expand16026_
                  (lambda (_src16036_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _src16036_)))))
                 (_no-expand16027_
                  (lambda (_src16032_)
                    (if (__loading-scheme-source)
                        _src16032_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src16032_))
                            (let ((_code16034_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src16032_))))
                              (if (pair? _code16034_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _code16034_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code16034_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e16029_ (_no-expand16027_ _src16024_)))
            (if _$e16029_ _$e16029_ (_expand16026_ _src16024_))))))
    (define __macro-descr
      (lambda (_src16010_ _def-syntax?16011_)
        (letrec ((_fail!16013_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src16010_))))
                 (_make-descr16014_
                  (lambda (_size16018_)
                    (let ((_expander16021_
                           (call-with-parameters
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (##eval-top _src16010_ ##interaction-cte)))
                            __loading-scheme-source
                            'macro)))
                      (if (procedure? _expander16021_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?16011_
                             _size16018_
                             _expander16021_
                             _src16010_))
                          (_fail!16013_))))))
          (if _def-syntax?16011_
              (_make-descr16014_ '-1)
              (let ((_code16016_
                     (let () (declare (not safe)) (##source-code _src16010_))))
                (if (and (let () (declare (not safe)) (##pair? _code16016_))
                         (let ((__tmp16115
                                (let ((__tmp16116
                                       (let ((__tmp16117
                                              (let ()
                                                (declare (not safe))
                                                (##car _code16016_))))
                                         (declare (not safe))
                                         (##sourcify __tmp16117 _src16010_))))
                                  (declare (not safe))
                                  (##source-code __tmp16116))))
                           (declare (not safe))
                           (##memq __tmp16115 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src16010_ _src16010_ '-3))
                      (_make-descr16014_
                       (let ((__tmp16118
                              (let ((__tmp16119
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _code16016_))))
                                (declare (not safe))
                                (##sourcify __tmp16119 _src16010_))))
                         (declare (not safe))
                         (##form-size __tmp16118))))
                    (_fail!16013_)))))))
    (define __source->syntax
      (lambda (_src16004_)
        (let _recur16006_ ((_e16008_ _src16004_))
          (if (let () (declare (not safe)) (##source? _e16008_))
              (let ((__tmp16121
                     (_recur16006_
                      (let () (declare (not safe)) (##source-code _e16008_))))
                    (__tmp16120
                     (let () (declare (not safe)) (##source-locat _e16008_))))
                (declare (not safe))
                (##structure AST::t __tmp16121 __tmp16120))
              (if (pair? _e16008_)
                  (cons (_recur16006_
                         (let () (declare (not safe)) (##car _e16008_)))
                        (_recur16006_
                         (let () (declare (not safe)) (##cdr _e16008_))))
                  (if (vector? _e16008_)
                      (vector-map _recur16006_ _e16008_)
                      (if (box? _e16008_)
                          (box (_recur16006_ (unbox _e16008_)))
                          _e16008_)))))))
    (define __compile-top-source
      (lambda (_stx16002_) (cons '__noexpand: (__compile-top _stx16002_))))
    (define __compile-top
      (lambda (_stx16000_)
        (__compile (gx#core-compile-top-syntax _stx16000_))))
    (define __eval-import
      (lambda (_in15981_)
        (letrec* ((_mods15983_ (make-table 'test: eq?))
                  (_import115984_
                   (lambda (_in15991_ _phi15992_)
                     (if (gx#module-import? _in15991_)
                         (let ((_iphi15994_
                                (fx+ _phi15992_
                                     (gx#module-import-phi _in15991_))))
                           (if (fxzero? _iphi15994_)
                               (_eval115985_
                                (gx#module-export-context
                                 (gx#module-import-source _in15991_)))
                               '#!void))
                         (if (gx#module-context? _in15991_)
                             (if (fxzero? _phi15992_)
                                 (_eval115985_ _in15991_)
                                 '#!void)
                             (if (gx#import-set? _in15991_)
                                 (let ((_iphi15996_
                                        (fx+ _phi15992_
                                             (gx#import-set-phi _in15991_))))
                                   (if (fxzero? _iphi15996_)
                                       (_eval115985_
                                        (gx#import-set-source _in15991_))
                                       (if (fxpositive? _iphi15996_)
                                           (for-each
                                            (lambda (_in15998_)
                                              (_import115984_
                                               _in15998_
                                               _iphi15996_))
                                            (gx#module-context-import
                                             (gx#import-set-source _in15991_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in15991_))))))
                  (_eval115985_
                   (lambda (_ctx15989_)
                     (if (table-ref _mods15983_ _ctx15989_ '#f)
                         '#!void
                         (begin
                           (table-set! _mods15983_ _ctx15989_ '#t)
                           (__eval-module _ctx15989_))))))
          (if (pair? _in15981_)
              (for-each
               (lambda (_in15987_) (_import115984_ _in15987_ '0))
               _in15981_)
              (_import115984_ _in15981_ '0)))))
    (define __eval-module
      (lambda (_obj15974_)
        (let* ((_key15976_
                (if (gx#module-context? _obj15974_)
                    (gx#module-context-path _obj15974_)
                    _obj15974_))
               (_$e15978_ (table-ref __*modules* _key15976_ '#f)))
          (if _$e15978_ (values _$e15978_) (gx#core-eval-module _obj15974_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules15909_)
        (let* ((_home15911_ (gerbil-home))
               (_libdir15913_ (path-expand '"lib" _home15911_))
               (_loadpath15922_
                (let ((_$e15915_ (getenv '"GERBIL_LOADPATH" '#f)))
                  (if _$e15915_
                      ((lambda (_envvar15918_)
                         (filter (lambda (_x15920_)
                                   (not (string-empty? _x15920_)))
                                 (string-split _envvar15918_ '#\:)))
                       _$e15915_)
                      '())))
               (_userpath15924_
                (path-expand '"lib" (getenv '"GERBIL_PATH" '"~/.gerbil")))
               (_loadpath15926_
                (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                    _loadpath15922_
                    (cons _userpath15924_ _loadpath15922_))))
          (current-module-library-path (cons _libdir15913_ _loadpath15926_)))
        (let* ((_registry-entry15931_
                (lambda (_m15929_) (cons _m15929_ 'builtin)))
               (_module-registry15971_
                (let _lp15933_ ((_rest15935_ _builtin-modules15909_)
                                (_registry15936_ '()))
                  (let* ((_rest1593715945_ _rest15935_)
                         (_else1593915953_
                          (lambda () (list->table _registry15936_)))
                         (_K1594115959_
                          (lambda (_rest15956_ _mod15957_)
                            (_lp15933_
                             _rest15956_
                             (cons (_registry-entry15931_
                                    (string-append _mod15957_ '"__0"))
                                   (cons (_registry-entry15931_
                                          (string-append _mod15957_ '"__rt"))
                                         _registry15936_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest1593715945_))
                        (let ((_hd1594215962_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest1593715945_)))
                              (_tl1594315964_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest1593715945_))))
                          (let* ((_mod15967_ _hd1594215962_)
                                 (_rest15969_ _tl1594315964_))
                            (_K1594115959_ _rest15969_ _mod15967_)))
                        (_else1593915953_))))))
          (current-module-registry _module-registry15971_))
        (current-readtable __*readtable*)))
    (define __expander-loaded '#f)
    (define gerbil-load-expander!
      (lambda ()
        (if __expander-loaded
            '#!void
            (begin (__load-gxi) (set! __expander-loaded '#t)))))))
