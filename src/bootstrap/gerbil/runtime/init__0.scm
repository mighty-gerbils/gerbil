(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1710155058)
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
        (letrec* ((_+readtable+78274_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core78276_ (gx#import-module ':gerbil/core))
                 (_pre78278_ (gx#make-prelude-context _core78276_)))
            (gx#current-expander-module-prelude _pre78278_)
            (gx#core-bind-root-syntax! ':<core> _pre78278_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port78281_)
             (input-port-readtable-set! _port78281_ _+readtable+78274_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port78283_)
             (output-port-readtable-set!
              _port78283_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port78283_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline78271_) '#!void))
    (define load-scheme
      (lambda (_path78266_)
        (let ((__tmp78285
               (lambda ()
                 (let ((__tmp78286 (lambda _args78269_ '#f)))
                   (declare (not safe))
                   (##load _path78266_ __tmp78286 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp78285
           __loading-scheme-source
           _path78266_))))
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
      (lambda _paths78261_
        (apply add-library-load-path _paths78261_)
        (apply add-expander-load-path _paths78261_)))
    (define add-library-load-path
      (lambda _paths78250_
        (let* ((_current78252_ (current-module-library-path))
               (_paths78254_ (map path-expand _paths78250_))
               (_paths78258_
                (filter (lambda (_x78256_)
                          (let ((__tmp78287 (member _x78256_ _current78252_)))
                            (declare (not safe))
                            (not __tmp78287)))
                        _paths78254_)))
          (current-module-library-path (append _current78252_ _paths78258_)))))
    (define add-expander-load-path
      (lambda _paths78239_
        (let* ((_current78241_ (gx#current-expander-module-library-path))
               (_paths78243_ (map path-expand _paths78239_))
               (_paths78247_
                (filter (lambda (_x78245_)
                          (let ((__tmp78288 (member _x78245_ _current78241_)))
                            (declare (not safe))
                            (not __tmp78288)))
                        _paths78243_)))
          (gx#current-expander-module-library-path
           (append _current78241_ _paths78247_)))))
    (define cons-load-path
      (lambda _paths78237_
        (apply cons-library-load-path _paths78237_)
        (apply cons-expander-load-path _paths78237_)))
    (define cons-library-load-path
      (lambda _paths78232_
        (let ((_current78234_ (current-module-library-path))
              (_paths78235_ (map path-expand _paths78232_)))
          (current-module-library-path (append _paths78235_ _current78234_)))))
    (define cons-expander-load-path
      (lambda _paths78227_
        (let ((_current78229_ (gx#current-expander-module-library-path))
              (_paths78230_ (map path-expand _paths78227_)))
          (gx#current-expander-module-library-path
           (append _paths78230_ _current78229_)))))
    (define with-cons-load-path
      (lambda (_thunk78223_ . _paths78224_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk78223_
                        _paths78224_))
               _paths78224_)))
    (define with-cons-library-load-path
      (lambda (_thunk78216_ . _paths78217_)
        (let ((_current78219_ (current-module-library-path))
              (_paths78220_ (map path-expand _paths78217_)))
          (let ((__tmp78290 (lambda () (_thunk78216_)))
                (__tmp78289 (append _paths78220_ _current78219_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78290
             current-module-library-path
             __tmp78289)))))
    (define with-cons-expander-load-path
      (lambda (_thunk78209_ . _paths78210_)
        (let ((_current78212_ (gx#current-expander-module-library-path))
              (_paths78213_ (map path-expand _paths78210_)))
          (let ((__tmp78292 (lambda () (_thunk78209_)))
                (__tmp78291 (append _paths78213_ _current78212_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78292
             gx#current-expander-module-library-path
             __tmp78291)))))
    (define __expand-source
      (lambda (_src78195_)
        (letrec ((_expand78197_
                  (lambda (_src78207_)
                    (let ((__tmp78293
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src78207_)))))
                      (declare (not safe))
                      (__compile-top __tmp78293))))
                 (_no-expand78198_
                  (lambda (_src78203_)
                    (if (__loading-scheme-source)
                        _src78203_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src78203_))
                            (let ((_code78205_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src78203_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code78205_))
                                  (if (let ((__tmp78294
                                             (let ()
                                               (declare (not safe))
                                               (##car _code78205_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp78294))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code78205_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e78200_
                 (let () (declare (not safe)) (_no-expand78198_ _src78195_))))
            (if _$e78200_
                _$e78200_
                (let () (declare (not safe)) (_expand78197_ _src78195_)))))))
    (define __macro-descr
      (lambda (_src78181_ _def-syntax?78182_)
        (letrec ((_fail!78184_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src78181_))))
                 (_make-descr78185_
                  (lambda (_size78189_)
                    (let ((_expander78192_
                           (let ((__tmp78295
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src78181_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp78295
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander78192_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?78182_
                             _size78189_
                             _expander78192_
                             _src78181_))
                          (let () (declare (not safe)) (_fail!78184_)))))))
          (if _def-syntax?78182_
              (let () (declare (not safe)) (_make-descr78185_ '-1))
              (let ((_code78187_
                     (let () (declare (not safe)) (##source-code _src78181_))))
                (if (and (let () (declare (not safe)) (##pair? _code78187_))
                         (let ((__tmp78299
                                (let ((__tmp78300
                                       (let ((__tmp78301
                                              (let ()
                                                (declare (not safe))
                                                (##car _code78187_))))
                                         (declare (not safe))
                                         (##sourcify __tmp78301 _src78181_))))
                                  (declare (not safe))
                                  (##source-code __tmp78300))))
                           (declare (not safe))
                           (##memq __tmp78299 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src78181_ _src78181_ '-3))
                      (let ((__tmp78296
                             (let ((__tmp78297
                                    (let ((__tmp78298
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code78187_))))
                                      (declare (not safe))
                                      (##sourcify __tmp78298 _src78181_))))
                               (declare (not safe))
                               (##form-size __tmp78297))))
                        (declare (not safe))
                        (_make-descr78185_ __tmp78296)))
                    (let () (declare (not safe)) (_fail!78184_))))))))
    (define __source->syntax
      (lambda (_src78175_)
        (let _recur78177_ ((_e78179_ _src78175_))
          (if (let () (declare (not safe)) (##source? _e78179_))
              (let ((__tmp78309
                     (let ((__tmp78310
                            (let ()
                              (declare (not safe))
                              (##source-code _e78179_))))
                       (declare (not safe))
                       (_recur78177_ __tmp78310)))
                    (__tmp78308
                     (let () (declare (not safe)) (##source-locat _e78179_))))
                (declare (not safe))
                (##structure AST::t __tmp78309 __tmp78308))
              (if (let () (declare (not safe)) (pair? _e78179_))
                  (let ((__tmp78306
                         (let ((__tmp78307
                                (let ()
                                  (declare (not safe))
                                  (##car _e78179_))))
                           (declare (not safe))
                           (_recur78177_ __tmp78307)))
                        (__tmp78304
                         (let ((__tmp78305
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e78179_))))
                           (declare (not safe))
                           (_recur78177_ __tmp78305))))
                    (declare (not safe))
                    (cons __tmp78306 __tmp78304))
                  (if (let () (declare (not safe)) (vector? _e78179_))
                      (vector-map _recur78177_ _e78179_)
                      (if (let () (declare (not safe)) (box? _e78179_))
                          (let ((__tmp78302
                                 (let ((__tmp78303 (unbox _e78179_)))
                                   (declare (not safe))
                                   (_recur78177_ __tmp78303))))
                            (declare (not safe))
                            (box __tmp78302))
                          _e78179_)))))))
    (define __compile-top-source
      (lambda (_stx78173_)
        (let ((__tmp78311
               (let () (declare (not safe)) (__compile-top _stx78173_))))
          (declare (not safe))
          (cons '__noexpand: __tmp78311))))
    (define __compile-top
      (lambda (_stx78171_)
        (let ((__tmp78312 (gx#core-compile-top-syntax _stx78171_)))
          (declare (not safe))
          (__compile __tmp78312))))
    (define __eval-import
      (lambda (_in78152_)
        (letrec* ((_mods78154_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import178155_
                   (lambda (_in78162_ _phi78163_)
                     (if (gx#module-import? _in78162_)
                         (let ((_iphi78165_
                                (fx+ _phi78163_
                                     (gx#module-import-phi _in78162_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi78165_))
                               (let ((__tmp78314
                                      (gx#module-export-context
                                       (gx#module-import-source _in78162_))))
                                 (declare (not safe))
                                 (_eval178156_ __tmp78314))
                               '#!void))
                         (if (gx#module-context? _in78162_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi78163_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval178156_ _in78162_))
                                 '#!void)
                             (if (gx#import-set? _in78162_)
                                 (let ((_iphi78167_
                                        (fx+ _phi78163_
                                             (gx#import-set-phi _in78162_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi78167_))
                                       (let ((__tmp78313
                                              (gx#import-set-source
                                               _in78162_)))
                                         (declare (not safe))
                                         (_eval178156_ __tmp78313))
                                       (if (fxpositive? _iphi78167_)
                                           (for-each
                                            (lambda (_in78169_)
                                              (let ()
                                                (declare (not safe))
                                                (_import178155_
                                                 _in78169_
                                                 _iphi78167_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in78162_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in78162_)))))))
                  (_eval178156_
                   (lambda (_ctx78160_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods78154_ _ctx78160_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods78154_ _ctx78160_ '#t))
                           (__eval-module _ctx78160_))))))
          (if (let () (declare (not safe)) (pair? _in78152_))
              (for-each
               (lambda (_in78158_)
                 (let () (declare (not safe)) (_import178155_ _in78158_ '0)))
               _in78152_)
              (let () (declare (not safe)) (_import178155_ _in78152_ '0))))))
    (define __eval-module
      (lambda (_obj78150_) (gx#core-eval-module _obj78150_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules78085_)
        (if __runtime-initialized
            '#!void
            (begin
              (dump-stack-trace? '#t)
              (let* ((_home78087_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir78089_ (path-expand '"lib" _home78087_))
                     (_userpath78091_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath78093_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir78089_ '()))
                          (let ((__tmp78315
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir78089_ '()))))
                            (declare (not safe))
                            (cons _userpath78091_ __tmp78315))))
                     (_loadpath78102_
                      (let ((_$e78095_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e78095_
                            ((lambda (_envvar78098_)
                               (append (filter (lambda (_x78100_)
                                                 (let ((__tmp78316
                                                        (let ()
                                                          (declare (not safe))
                                                          (string-empty?
                                                           _x78100_))))
                                                   (declare (not safe))
                                                   (not __tmp78316)))
                                               (let ()
                                                 (declare (not safe))
                                                 (string-split
                                                  _envvar78098_
                                                  '#\:)))
                                       _loadpath78093_))
                             _$e78095_)
                            _loadpath78093_))))
                (current-module-library-path _loadpath78102_))
              (let* ((_registry-entry78107_
                      (lambda (_m78105_)
                        (let ()
                          (declare (not safe))
                          (cons _m78105_ 'builtin))))
                     (_module-registry78147_
                      (let _lp78109_ ((_rest78111_ _builtin-modules78085_)
                                      (_registry78112_ '()))
                        (let* ((_rest7811378121_ _rest78111_)
                               (_else7811578129_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry78112_))))
                               (_K7811778135_
                                (lambda (_rest78132_ _mod78133_)
                                  (let ((__tmp78317
                                         (let ((__tmp78321
                                                (let ((__tmp78322
                                                       (string-append
                                                        _mod78133_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry78107_
                                                   __tmp78322)))
                                               (__tmp78318
                                                (let ((__tmp78319
                                                       (let ((__tmp78320
                                                              (string-append
                                                               _mod78133_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry78107_
                                                          __tmp78320))))
                                                  (declare (not safe))
                                                  (cons __tmp78319
                                                        _registry78112_))))
                                           (declare (not safe))
                                           (cons __tmp78321 __tmp78318))))
                                    (declare (not safe))
                                    (_lp78109_ _rest78132_ __tmp78317)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7811378121_))
                              (let ((_hd7811878138_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7811378121_)))
                                    (_tl7811978140_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7811378121_))))
                                (let* ((_mod78143_ _hd7811878138_)
                                       (_rest78145_ _tl7811978140_))
                                  (declare (not safe))
                                  (_K7811778135_ _rest78145_ _mod78143_)))
                              (let ()
                                (declare (not safe))
                                (_else7811578129_)))))))
                (current-module-registry _module-registry78147_))
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
