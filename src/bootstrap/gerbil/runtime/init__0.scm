(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1710617601)
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
        (letrec* ((_+readtable+77084_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core77086_ (gx#import-module ':gerbil/core))
                 (_pre77088_ (gx#make-prelude-context _core77086_)))
            (gx#current-expander-module-prelude _pre77088_)
            (gx#core-bind-root-syntax! ':<core> _pre77088_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port77091_)
             (input-port-readtable-set! _port77091_ _+readtable+77084_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port77093_)
             (output-port-readtable-set!
              _port77093_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port77093_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline77081_) '#!void))
    (define load-scheme
      (lambda (_path77076_)
        (let ((__tmp77095
               (lambda ()
                 (let ((__tmp77096 (lambda _args77079_ '#f)))
                   (declare (not safe))
                   (##load _path77076_ __tmp77096 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp77095
           __loading-scheme-source
           _path77076_))))
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
      (lambda _paths77071_
        (apply add-library-load-path _paths77071_)
        (apply add-expander-load-path _paths77071_)))
    (define add-library-load-path
      (lambda _paths77060_
        (let* ((_current77062_ (current-module-library-path))
               (_paths77064_ (map path-expand _paths77060_))
               (_paths77068_
                (filter (lambda (_x77066_)
                          (let ((__tmp77097 (member _x77066_ _current77062_)))
                            (declare (not safe))
                            (not __tmp77097)))
                        _paths77064_)))
          (current-module-library-path (append _current77062_ _paths77068_)))))
    (define add-expander-load-path
      (lambda _paths77049_
        (let* ((_current77051_ (gx#current-expander-module-library-path))
               (_paths77053_ (map path-expand _paths77049_))
               (_paths77057_
                (filter (lambda (_x77055_)
                          (let ((__tmp77098 (member _x77055_ _current77051_)))
                            (declare (not safe))
                            (not __tmp77098)))
                        _paths77053_)))
          (gx#current-expander-module-library-path
           (append _current77051_ _paths77057_)))))
    (define cons-load-path
      (lambda _paths77047_
        (apply cons-library-load-path _paths77047_)
        (apply cons-expander-load-path _paths77047_)))
    (define cons-library-load-path
      (lambda _paths77042_
        (let ((_current77044_ (current-module-library-path))
              (_paths77045_ (map path-expand _paths77042_)))
          (current-module-library-path (append _paths77045_ _current77044_)))))
    (define cons-expander-load-path
      (lambda _paths77037_
        (let ((_current77039_ (gx#current-expander-module-library-path))
              (_paths77040_ (map path-expand _paths77037_)))
          (gx#current-expander-module-library-path
           (append _paths77040_ _current77039_)))))
    (define with-cons-load-path
      (lambda (_thunk77033_ . _paths77034_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk77033_
                        _paths77034_))
               _paths77034_)))
    (define with-cons-library-load-path
      (lambda (_thunk77026_ . _paths77027_)
        (let ((_current77029_ (current-module-library-path))
              (_paths77030_ (map path-expand _paths77027_)))
          (let ((__tmp77100 (lambda () (_thunk77026_)))
                (__tmp77099 (append _paths77030_ _current77029_)))
            (declare (not safe))
            (call-with-parameters
             __tmp77100
             current-module-library-path
             __tmp77099)))))
    (define with-cons-expander-load-path
      (lambda (_thunk77019_ . _paths77020_)
        (let ((_current77022_ (gx#current-expander-module-library-path))
              (_paths77023_ (map path-expand _paths77020_)))
          (let ((__tmp77102 (lambda () (_thunk77019_)))
                (__tmp77101 (append _paths77023_ _current77022_)))
            (declare (not safe))
            (call-with-parameters
             __tmp77102
             gx#current-expander-module-library-path
             __tmp77101)))))
    (define __expand-source
      (lambda (_src77005_)
        (letrec ((_expand77007_
                  (lambda (_src77017_)
                    (let ((__tmp77103
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src77017_)))))
                      (declare (not safe))
                      (__compile-top __tmp77103))))
                 (_no-expand77008_
                  (lambda (_src77013_)
                    (if (__loading-scheme-source)
                        _src77013_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src77013_))
                            (let ((_code77015_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src77013_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code77015_))
                                  (if (let ((__tmp77104
                                             (let ()
                                               (declare (not safe))
                                               (##car _code77015_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp77104))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code77015_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e77010_
                 (let () (declare (not safe)) (_no-expand77008_ _src77005_))))
            (if _$e77010_
                _$e77010_
                (let () (declare (not safe)) (_expand77007_ _src77005_)))))))
    (define __macro-descr
      (lambda (_src76991_ _def-syntax?76992_)
        (letrec ((_fail!76994_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src76991_))))
                 (_make-descr76995_
                  (lambda (_size76999_)
                    (let ((_expander77002_
                           (let ((__tmp77105
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src76991_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp77105
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander77002_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?76992_
                             _size76999_
                             _expander77002_
                             _src76991_))
                          (let () (declare (not safe)) (_fail!76994_)))))))
          (if _def-syntax?76992_
              (let () (declare (not safe)) (_make-descr76995_ '-1))
              (let ((_code76997_
                     (let () (declare (not safe)) (##source-code _src76991_))))
                (if (and (let () (declare (not safe)) (##pair? _code76997_))
                         (let ((__tmp77106
                                (let ((__tmp77107
                                       (let ((__tmp77108
                                              (let ()
                                                (declare (not safe))
                                                (##car _code76997_))))
                                         (declare (not safe))
                                         (##sourcify __tmp77108 _src76991_))))
                                  (declare (not safe))
                                  (##source-code __tmp77107))))
                           (declare (not safe))
                           (##memq __tmp77106 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src76991_ _src76991_ '-3))
                      (let ((__tmp77109
                             (let ((__tmp77110
                                    (let ((__tmp77111
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code76997_))))
                                      (declare (not safe))
                                      (##sourcify __tmp77111 _src76991_))))
                               (declare (not safe))
                               (##form-size __tmp77110))))
                        (declare (not safe))
                        (_make-descr76995_ __tmp77109)))
                    (let () (declare (not safe)) (_fail!76994_))))))))
    (define __source->syntax
      (lambda (_src76985_)
        (let _recur76987_ ((_e76989_ _src76985_))
          (if (let () (declare (not safe)) (##source? _e76989_))
              (let ((__tmp77113
                     (let ((__tmp77114
                            (let ()
                              (declare (not safe))
                              (##source-code _e76989_))))
                       (declare (not safe))
                       (_recur76987_ __tmp77114)))
                    (__tmp77112
                     (let () (declare (not safe)) (##source-locat _e76989_))))
                (declare (not safe))
                (##structure AST::t __tmp77113 __tmp77112))
              (if (let () (declare (not safe)) (pair? _e76989_))
                  (let ((__tmp77117
                         (let ((__tmp77118
                                (let ()
                                  (declare (not safe))
                                  (##car _e76989_))))
                           (declare (not safe))
                           (_recur76987_ __tmp77118)))
                        (__tmp77115
                         (let ((__tmp77116
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e76989_))))
                           (declare (not safe))
                           (_recur76987_ __tmp77116))))
                    (declare (not safe))
                    (cons __tmp77117 __tmp77115))
                  (if (let () (declare (not safe)) (vector? _e76989_))
                      (vector-map _recur76987_ _e76989_)
                      (if (let () (declare (not safe)) (box? _e76989_))
                          (let ((__tmp77119
                                 (let ((__tmp77120 (unbox _e76989_)))
                                   (declare (not safe))
                                   (_recur76987_ __tmp77120))))
                            (declare (not safe))
                            (box __tmp77119))
                          _e76989_)))))))
    (define __compile-top-source
      (lambda (_stx76983_)
        (let ((__tmp77121
               (let () (declare (not safe)) (__compile-top _stx76983_))))
          (declare (not safe))
          (cons '__noexpand: __tmp77121))))
    (define __compile-top
      (lambda (_stx76981_)
        (let ((__tmp77122 (gx#core-compile-top-syntax _stx76981_)))
          (declare (not safe))
          (__compile __tmp77122))))
    (define __eval-import
      (lambda (_in76962_)
        (letrec* ((_mods76964_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import176965_
                   (lambda (_in76972_ _phi76973_)
                     (if (gx#module-import? _in76972_)
                         (let ((_iphi76975_
                                (fx+ _phi76973_
                                     (gx#module-import-phi _in76972_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi76975_))
                               (let ((__tmp77123
                                      (gx#module-export-context
                                       (gx#module-import-source _in76972_))))
                                 (declare (not safe))
                                 (_eval176966_ __tmp77123))
                               '#!void))
                         (if (gx#module-context? _in76972_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi76973_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval176966_ _in76972_))
                                 '#!void)
                             (if (gx#import-set? _in76972_)
                                 (let ((_iphi76977_
                                        (fx+ _phi76973_
                                             (gx#import-set-phi _in76972_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi76977_))
                                       (let ((__tmp77124
                                              (gx#import-set-source
                                               _in76972_)))
                                         (declare (not safe))
                                         (_eval176966_ __tmp77124))
                                       (if (fxpositive? _iphi76977_)
                                           (for-each
                                            (lambda (_in76979_)
                                              (let ()
                                                (declare (not safe))
                                                (_import176965_
                                                 _in76979_
                                                 _iphi76977_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in76972_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in76972_)))))))
                  (_eval176966_
                   (lambda (_ctx76970_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods76964_ _ctx76970_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods76964_ _ctx76970_ '#t))
                           (__eval-module _ctx76970_))))))
          (if (let () (declare (not safe)) (pair? _in76962_))
              (for-each
               (lambda (_in76968_)
                 (let () (declare (not safe)) (_import176965_ _in76968_ '0)))
               _in76962_)
              (let () (declare (not safe)) (_import176965_ _in76962_ '0))))))
    (define __eval-module
      (lambda (_obj76960_) (gx#core-eval-module _obj76960_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules76895_)
        (if __runtime-initialized
            '#!void
            (begin
              (dump-stack-trace? '#t)
              (let* ((_home76897_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir76899_ (path-expand '"lib" _home76897_))
                     (_userpath76901_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath76903_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir76899_ '()))
                          (let ((__tmp77125
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir76899_ '()))))
                            (declare (not safe))
                            (cons _userpath76901_ __tmp77125))))
                     (_loadpath76912_
                      (let ((_$e76905_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e76905_
                            ((lambda (_envvar76908_)
                               (append (filter (lambda (_x76910_)
                                                 (let ((__tmp77126
                                                        (let ()
                                                          (declare (not safe))
                                                          (string-empty?
                                                           _x76910_))))
                                                   (declare (not safe))
                                                   (not __tmp77126)))
                                               (let ()
                                                 (declare (not safe))
                                                 (string-split
                                                  _envvar76908_
                                                  '#\:)))
                                       _loadpath76903_))
                             _$e76905_)
                            _loadpath76903_))))
                (current-module-library-path _loadpath76912_))
              (let* ((_registry-entry76917_
                      (lambda (_m76915_)
                        (let ()
                          (declare (not safe))
                          (cons _m76915_ 'builtin))))
                     (_module-registry76957_
                      (let _lp76919_ ((_rest76921_ _builtin-modules76895_)
                                      (_registry76922_ '()))
                        (let* ((_rest7692376931_ _rest76921_)
                               (_else7692576939_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry76922_))))
                               (_K7692776945_
                                (lambda (_rest76942_ _mod76943_)
                                  (let ((__tmp77127
                                         (let ((__tmp77131
                                                (let ((__tmp77132
                                                       (string-append
                                                        _mod76943_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry76917_
                                                   __tmp77132)))
                                               (__tmp77128
                                                (let ((__tmp77129
                                                       (let ((__tmp77130
                                                              (string-append
                                                               _mod76943_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry76917_
                                                          __tmp77130))))
                                                  (declare (not safe))
                                                  (cons __tmp77129
                                                        _registry76922_))))
                                           (declare (not safe))
                                           (cons __tmp77131 __tmp77128))))
                                    (declare (not safe))
                                    (_lp76919_ _rest76942_ __tmp77127)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7692376931_))
                              (let ((_hd7692876948_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7692376931_)))
                                    (_tl7692976950_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7692376931_))))
                                (let* ((_mod76953_ _hd7692876948_)
                                       (_rest76955_ _tl7692976950_))
                                  (declare (not safe))
                                  (_K7692776945_ _rest76955_ _mod76953_)))
                              (let ()
                                (declare (not safe))
                                (_else7692576939_)))))))
                (current-module-registry _module-registry76957_))
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
