(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1709111635)
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
        (letrec* ((_+readtable+78257_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core78259_ (gx#import-module ':gerbil/core))
                 (_pre78261_ (gx#make-prelude-context _core78259_)))
            (gx#current-expander-module-prelude _pre78261_)
            (gx#core-bind-root-syntax! ':<core> _pre78261_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port78264_)
             (input-port-readtable-set! _port78264_ _+readtable+78257_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port78266_)
             (output-port-readtable-set!
              _port78266_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port78266_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline78254_) '#!void))
    (define load-scheme
      (lambda (_path78249_)
        (let ((__tmp78268
               (lambda ()
                 (let ((__tmp78269 (lambda _args78252_ '#f)))
                   (declare (not safe))
                   (##load _path78249_ __tmp78269 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp78268
           __loading-scheme-source
           _path78249_))))
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
      (lambda _paths78244_
        (apply add-library-load-path _paths78244_)
        (apply add-expander-load-path _paths78244_)))
    (define add-library-load-path
      (lambda _paths78233_
        (let* ((_current78235_ (current-module-library-path))
               (_paths78237_ (map path-expand _paths78233_))
               (_paths78241_
                (let ((__tmp78270
                       (lambda (_x78239_)
                         (let ((__tmp78271 (member _x78239_ _current78235_)))
                           (declare (not safe))
                           (not __tmp78271)))))
                  (declare (not safe))
                  (filter __tmp78270 _paths78237_))))
          (current-module-library-path (append _current78235_ _paths78241_)))))
    (define add-expander-load-path
      (lambda _paths78222_
        (let* ((_current78224_ (gx#current-expander-module-library-path))
               (_paths78226_ (map path-expand _paths78222_))
               (_paths78230_
                (let ((__tmp78272
                       (lambda (_x78228_)
                         (let ((__tmp78273 (member _x78228_ _current78224_)))
                           (declare (not safe))
                           (not __tmp78273)))))
                  (declare (not safe))
                  (filter __tmp78272 _paths78226_))))
          (gx#current-expander-module-library-path
           (append _current78224_ _paths78230_)))))
    (define cons-load-path
      (lambda _paths78220_
        (apply cons-library-load-path _paths78220_)
        (apply cons-expander-load-path _paths78220_)))
    (define cons-library-load-path
      (lambda _paths78215_
        (let ((_current78217_ (current-module-library-path))
              (_paths78218_ (map path-expand _paths78215_)))
          (current-module-library-path (append _paths78218_ _current78217_)))))
    (define cons-expander-load-path
      (lambda _paths78210_
        (let ((_current78212_ (gx#current-expander-module-library-path))
              (_paths78213_ (map path-expand _paths78210_)))
          (gx#current-expander-module-library-path
           (append _paths78213_ _current78212_)))))
    (define with-cons-load-path
      (lambda (_thunk78206_ . _paths78207_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk78206_
                        _paths78207_))
               _paths78207_)))
    (define with-cons-library-load-path
      (lambda (_thunk78199_ . _paths78200_)
        (let ((_current78202_ (current-module-library-path))
              (_paths78203_ (map path-expand _paths78200_)))
          (let ((__tmp78275 (lambda () (_thunk78199_)))
                (__tmp78274 (append _paths78203_ _current78202_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78275
             current-module-library-path
             __tmp78274)))))
    (define with-cons-expander-load-path
      (lambda (_thunk78192_ . _paths78193_)
        (let ((_current78195_ (gx#current-expander-module-library-path))
              (_paths78196_ (map path-expand _paths78193_)))
          (let ((__tmp78277 (lambda () (_thunk78192_)))
                (__tmp78276 (append _paths78196_ _current78195_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78277
             gx#current-expander-module-library-path
             __tmp78276)))))
    (define __expand-source
      (lambda (_src78178_)
        (letrec ((_expand78180_
                  (lambda (_src78190_)
                    (let ((__tmp78278
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src78190_)))))
                      (declare (not safe))
                      (__compile-top __tmp78278))))
                 (_no-expand78181_
                  (lambda (_src78186_)
                    (if (__loading-scheme-source)
                        _src78186_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src78186_))
                            (let ((_code78188_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src78186_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code78188_))
                                  (if (let ((__tmp78279
                                             (let ()
                                               (declare (not safe))
                                               (##car _code78188_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp78279))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code78188_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e78183_
                 (let () (declare (not safe)) (_no-expand78181_ _src78178_))))
            (if _$e78183_
                _$e78183_
                (let () (declare (not safe)) (_expand78180_ _src78178_)))))))
    (define __macro-descr
      (lambda (_src78164_ _def-syntax?78165_)
        (letrec ((_fail!78167_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src78164_))))
                 (_make-descr78168_
                  (lambda (_size78172_)
                    (let ((_expander78175_
                           (let ((__tmp78280
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src78164_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp78280
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander78175_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?78165_
                             _size78172_
                             _expander78175_
                             _src78164_))
                          (let () (declare (not safe)) (_fail!78167_)))))))
          (if _def-syntax?78165_
              (let () (declare (not safe)) (_make-descr78168_ '-1))
              (let ((_code78170_
                     (let () (declare (not safe)) (##source-code _src78164_))))
                (if (and (let () (declare (not safe)) (##pair? _code78170_))
                         (let ((__tmp78284
                                (let ((__tmp78285
                                       (let ((__tmp78286
                                              (let ()
                                                (declare (not safe))
                                                (##car _code78170_))))
                                         (declare (not safe))
                                         (##sourcify __tmp78286 _src78164_))))
                                  (declare (not safe))
                                  (##source-code __tmp78285))))
                           (declare (not safe))
                           (##memq __tmp78284 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src78164_ _src78164_ '-3))
                      (let ((__tmp78281
                             (let ((__tmp78282
                                    (let ((__tmp78283
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code78170_))))
                                      (declare (not safe))
                                      (##sourcify __tmp78283 _src78164_))))
                               (declare (not safe))
                               (##form-size __tmp78282))))
                        (declare (not safe))
                        (_make-descr78168_ __tmp78281)))
                    (let () (declare (not safe)) (_fail!78167_))))))))
    (define __source->syntax
      (lambda (_src78158_)
        (let _recur78160_ ((_e78162_ _src78158_))
          (if (let () (declare (not safe)) (##source? _e78162_))
              (let ((__tmp78294
                     (let ((__tmp78295
                            (let ()
                              (declare (not safe))
                              (##source-code _e78162_))))
                       (declare (not safe))
                       (_recur78160_ __tmp78295)))
                    (__tmp78293
                     (let () (declare (not safe)) (##source-locat _e78162_))))
                (declare (not safe))
                (##structure AST::t __tmp78294 __tmp78293))
              (if (let () (declare (not safe)) (pair? _e78162_))
                  (let ((__tmp78291
                         (let ((__tmp78292
                                (let ()
                                  (declare (not safe))
                                  (##car _e78162_))))
                           (declare (not safe))
                           (_recur78160_ __tmp78292)))
                        (__tmp78289
                         (let ((__tmp78290
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e78162_))))
                           (declare (not safe))
                           (_recur78160_ __tmp78290))))
                    (declare (not safe))
                    (cons __tmp78291 __tmp78289))
                  (if (let () (declare (not safe)) (vector? _e78162_))
                      (vector-map _recur78160_ _e78162_)
                      (if (let () (declare (not safe)) (box? _e78162_))
                          (let ((__tmp78287
                                 (let ((__tmp78288 (unbox _e78162_)))
                                   (declare (not safe))
                                   (_recur78160_ __tmp78288))))
                            (declare (not safe))
                            (box __tmp78287))
                          _e78162_)))))))
    (define __compile-top-source
      (lambda (_stx78156_)
        (let ((__tmp78296
               (let () (declare (not safe)) (__compile-top _stx78156_))))
          (declare (not safe))
          (cons '__noexpand: __tmp78296))))
    (define __compile-top
      (lambda (_stx78154_)
        (let ((__tmp78297 (gx#core-compile-top-syntax _stx78154_)))
          (declare (not safe))
          (__compile __tmp78297))))
    (define __eval-import
      (lambda (_in78135_)
        (letrec* ((_mods78137_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import178138_
                   (lambda (_in78145_ _phi78146_)
                     (if (gx#module-import? _in78145_)
                         (let ((_iphi78148_
                                (fx+ _phi78146_
                                     (gx#module-import-phi _in78145_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi78148_))
                               (let ((__tmp78299
                                      (gx#module-export-context
                                       (gx#module-import-source _in78145_))))
                                 (declare (not safe))
                                 (_eval178139_ __tmp78299))
                               '#!void))
                         (if (gx#module-context? _in78145_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi78146_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval178139_ _in78145_))
                                 '#!void)
                             (if (gx#import-set? _in78145_)
                                 (let ((_iphi78150_
                                        (fx+ _phi78146_
                                             (gx#import-set-phi _in78145_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi78150_))
                                       (let ((__tmp78298
                                              (gx#import-set-source
                                               _in78145_)))
                                         (declare (not safe))
                                         (_eval178139_ __tmp78298))
                                       (if (fxpositive? _iphi78150_)
                                           (for-each
                                            (lambda (_in78152_)
                                              (let ()
                                                (declare (not safe))
                                                (_import178138_
                                                 _in78152_
                                                 _iphi78150_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in78145_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in78145_)))))))
                  (_eval178139_
                   (lambda (_ctx78143_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods78137_ _ctx78143_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods78137_ _ctx78143_ '#t))
                           (__eval-module _ctx78143_))))))
          (if (let () (declare (not safe)) (pair? _in78135_))
              (for-each
               (lambda (_in78141_)
                 (let () (declare (not safe)) (_import178138_ _in78141_ '0)))
               _in78135_)
              (let () (declare (not safe)) (_import178138_ _in78135_ '0))))))
    (define __eval-module
      (lambda (_obj78133_) (gx#core-eval-module _obj78133_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules78068_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home78070_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir78072_ (path-expand '"lib" _home78070_))
                     (_userpath78074_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath78076_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir78072_ '()))
                          (let ((__tmp78300
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir78072_ '()))))
                            (declare (not safe))
                            (cons _userpath78074_ __tmp78300))))
                     (_loadpath78085_
                      (let ((_$e78078_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e78078_
                            ((lambda (_envvar78081_)
                               (append (let ((__tmp78302
                                              (lambda (_x78083_)
                                                (let ((__tmp78303
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x78083_))))
                                                  (declare (not safe))
                                                  (not __tmp78303))))
                                             (__tmp78301
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar78081_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp78302 __tmp78301))
                                       _loadpath78076_))
                             _$e78078_)
                            _loadpath78076_))))
                (current-module-library-path _loadpath78085_))
              (let* ((_registry-entry78090_
                      (lambda (_m78088_)
                        (let ()
                          (declare (not safe))
                          (cons _m78088_ 'builtin))))
                     (_module-registry78130_
                      (let _lp78092_ ((_rest78094_ _builtin-modules78068_)
                                      (_registry78095_ '()))
                        (let* ((_rest7809678104_ _rest78094_)
                               (_else7809878112_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry78095_))))
                               (_K7810078118_
                                (lambda (_rest78115_ _mod78116_)
                                  (let ((__tmp78304
                                         (let ((__tmp78308
                                                (let ((__tmp78309
                                                       (string-append
                                                        _mod78116_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry78090_
                                                   __tmp78309)))
                                               (__tmp78305
                                                (let ((__tmp78306
                                                       (let ((__tmp78307
                                                              (string-append
                                                               _mod78116_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry78090_
                                                          __tmp78307))))
                                                  (declare (not safe))
                                                  (cons __tmp78306
                                                        _registry78095_))))
                                           (declare (not safe))
                                           (cons __tmp78308 __tmp78305))))
                                    (declare (not safe))
                                    (_lp78092_ _rest78115_ __tmp78304)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7809678104_))
                              (let ((_hd7810178121_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7809678104_)))
                                    (_tl7810278123_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7809678104_))))
                                (let* ((_mod78126_ _hd7810178121_)
                                       (_rest78128_ _tl7810278123_))
                                  (declare (not safe))
                                  (_K7810078118_ _rest78128_ _mod78126_)))
                              (let ()
                                (declare (not safe))
                                (_else7809878112_)))))))
                (current-module-registry _module-registry78130_))
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
