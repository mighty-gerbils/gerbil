(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1710440199)
  (begin
    (define __loading-scheme-source (make-parameter '#f))
    (define __init-gx!
      (lambda ()
        (gx#current-expander-marks '())
        (gx#current-expander-phi '0)
        (gx#current-expander-context (gx#make-top-context))
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
        (letrec* ((_+readtable+78295_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core78297_ (gx#import-module ':gerbil/core))
                 (_pre78299_ (gx#make-prelude-context _core78297_)))
            (gx#current-expander-module-prelude _pre78299_)
            (gx#core-bind-root-syntax! ':<core> _pre78299_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port78302_)
             (input-port-readtable-set! _port78302_ _+readtable+78295_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port78304_)
             (output-port-readtable-set!
              _port78304_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port78304_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline78292_) '#!void))
    (define __expand-source
      (lambda (_src78278_)
        (letrec ((_expand78280_
                  (lambda (_src78290_)
                    (let ((__tmp78306
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src78290_)))))
                      (declare (not safe))
                      (__compile-top __tmp78306))))
                 (_no-expand78281_
                  (lambda (_src78286_)
                    (if (__loading-scheme-source)
                        _src78286_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src78286_))
                            (let ((_code78288_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src78286_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code78288_))
                                  (if (let ((__tmp78307
                                             (let ()
                                               (declare (not safe))
                                               (##car _code78288_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp78307))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code78288_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e78283_
                 (let () (declare (not safe)) (_no-expand78281_ _src78278_))))
            (if _$e78283_
                _$e78283_
                (let () (declare (not safe)) (_expand78280_ _src78278_)))))))
    (define __macro-descr
      (lambda (_src78264_ _def-syntax?78265_)
        (letrec ((_fail!78267_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src78264_))))
                 (_make-descr78268_
                  (lambda (_size78272_)
                    (let ((_expander78275_
                           (let ((__tmp78308
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src78264_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp78308
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander78275_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?78265_
                             _size78272_
                             _expander78275_
                             _src78264_))
                          (let () (declare (not safe)) (_fail!78267_)))))))
          (if _def-syntax?78265_
              (let () (declare (not safe)) (_make-descr78268_ '-1))
              (let ((_code78270_
                     (let () (declare (not safe)) (##source-code _src78264_))))
                (if (and (let () (declare (not safe)) (##pair? _code78270_))
                         (let ((__tmp78312
                                (let ((__tmp78313
                                       (let ((__tmp78314
                                              (let ()
                                                (declare (not safe))
                                                (##car _code78270_))))
                                         (declare (not safe))
                                         (##sourcify __tmp78314 _src78264_))))
                                  (declare (not safe))
                                  (##source-code __tmp78313))))
                           (declare (not safe))
                           (##memq __tmp78312 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src78264_ _src78264_ '-3))
                      (let ((__tmp78309
                             (let ((__tmp78310
                                    (let ((__tmp78311
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code78270_))))
                                      (declare (not safe))
                                      (##sourcify __tmp78311 _src78264_))))
                               (declare (not safe))
                               (##form-size __tmp78310))))
                        (declare (not safe))
                        (_make-descr78268_ __tmp78309)))
                    (let () (declare (not safe)) (_fail!78267_))))))))
    (define __source->syntax
      (lambda (_src78258_)
        (let _recur78260_ ((_e78262_ _src78258_))
          (if (let () (declare (not safe)) (##source? _e78262_))
              (let ((__tmp78322
                     (let ((__tmp78323
                            (let ()
                              (declare (not safe))
                              (##source-code _e78262_))))
                       (declare (not safe))
                       (_recur78260_ __tmp78323)))
                    (__tmp78321
                     (let () (declare (not safe)) (##source-locat _e78262_))))
                (declare (not safe))
                (##structure AST::t __tmp78322 __tmp78321))
              (if (let () (declare (not safe)) (pair? _e78262_))
                  (let ((__tmp78319
                         (let ((__tmp78320
                                (let ()
                                  (declare (not safe))
                                  (##car _e78262_))))
                           (declare (not safe))
                           (_recur78260_ __tmp78320)))
                        (__tmp78317
                         (let ((__tmp78318
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e78262_))))
                           (declare (not safe))
                           (_recur78260_ __tmp78318))))
                    (declare (not safe))
                    (cons __tmp78319 __tmp78317))
                  (if (let () (declare (not safe)) (vector? _e78262_))
                      (vector-map _recur78260_ _e78262_)
                      (if (let () (declare (not safe)) (box? _e78262_))
                          (let ((__tmp78315
                                 (let ((__tmp78316 (unbox _e78262_)))
                                   (declare (not safe))
                                   (_recur78260_ __tmp78316))))
                            (declare (not safe))
                            (box __tmp78315))
                          _e78262_)))))))
    (define __compile-top-source
      (lambda (_stx78256_)
        (let ((__tmp78324
               (let () (declare (not safe)) (__compile-top _stx78256_))))
          (declare (not safe))
          (cons '__noexpand: __tmp78324))))
    (define __compile-top
      (lambda (_stx78254_)
        (let ((__tmp78325 (gx#core-compile-top-syntax _stx78254_)))
          (declare (not safe))
          (__compile __tmp78325))))
    (define __eval-import
      (lambda (_in78235_)
        (letrec* ((_mods78237_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import178238_
                   (lambda (_in78245_ _phi78246_)
                     (if (gx#module-import? _in78245_)
                         (let ((_iphi78248_
                                (fx+ _phi78246_
                                     (gx#module-import-phi _in78245_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi78248_))
                               (let ((__tmp78327
                                      (gx#module-export-context
                                       (gx#module-import-source _in78245_))))
                                 (declare (not safe))
                                 (_eval178239_ __tmp78327))
                               '#!void))
                         (if (gx#module-context? _in78245_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi78246_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval178239_ _in78245_))
                                 '#!void)
                             (if (gx#import-set? _in78245_)
                                 (let ((_iphi78250_
                                        (fx+ _phi78246_
                                             (gx#import-set-phi _in78245_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi78250_))
                                       (let ((__tmp78326
                                              (gx#import-set-source
                                               _in78245_)))
                                         (declare (not safe))
                                         (_eval178239_ __tmp78326))
                                       (if (fxpositive? _iphi78250_)
                                           (for-each
                                            (lambda (_in78252_)
                                              (let ()
                                                (declare (not safe))
                                                (_import178238_
                                                 _in78252_
                                                 _iphi78250_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in78245_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in78245_)))))))
                  (_eval178239_
                   (lambda (_ctx78243_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods78237_ _ctx78243_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods78237_ _ctx78243_ '#t))
                           (__eval-module _ctx78243_))))))
          (if (let () (declare (not safe)) (pair? _in78235_))
              (for-each
               (lambda (_in78241_)
                 (let () (declare (not safe)) (_import178238_ _in78241_ '0)))
               _in78235_)
              (let () (declare (not safe)) (_import178238_ _in78235_ '0))))))
    (define __eval-module
      (lambda (_obj78233_) (gx#core-eval-module _obj78233_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules78166_)
        (if __runtime-initialized
            '#!void
            (begin
              (dump-stack-trace? '#t)
              (let* ((_home78168_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir78170_ (path-expand '"lib" _home78168_))
                     (_userpath78172_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath78174_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir78170_ '()))
                          (let ((__tmp78328
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir78170_ '()))))
                            (declare (not safe))
                            (cons _userpath78172_ __tmp78328))))
                     (_loadpath78183_
                      (let ((_$e78176_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e78176_
                            ((lambda (_envvar78179_)
                               (append (filter (lambda (_x78181_)
                                                 (let ((__tmp78329
                                                        (let ()
                                                          (declare (not safe))
                                                          (string-empty?
                                                           _x78181_))))
                                                   (declare (not safe))
                                                   (not __tmp78329)))
                                               (let ()
                                                 (declare (not safe))
                                                 (string-split
                                                  _envvar78179_
                                                  '#\:)))
                                       _loadpath78174_))
                             _$e78176_)
                            _loadpath78174_))))
                (let ()
                  (declare (not safe))
                  (##set-module-search-order! _loadpath78183_)))
              (let ()
                (declare (not safe))
                (register-builtin-modules! _builtin-modules78166_))
              (let* ((_registry-entry78188_
                      (lambda (_m78186_)
                        (let ()
                          (declare (not safe))
                          (cons _m78186_ 'builtin))))
                     (_module-registry78230_
                      (let _lp78190_ ((_rest78192_ _builtin-modules78166_)
                                      (_registry78193_ '()))
                        (let* ((_rest7819478202_ _rest78192_)
                               (_else7819678210_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry78193_))))
                               (_K7819878218_
                                (lambda (_rest78213_ _mod78214_)
                                  (let* ((_modstr78216_
                                          (symbol->string _mod78214_))
                                         (__tmp78330
                                          (let ((__tmp78334
                                                 (let ((__tmp78335
                                                        (string-append
                                                         _modstr78216_
                                                         '"__0")))
                                                   (declare (not safe))
                                                   (_registry-entry78188_
                                                    __tmp78335)))
                                                (__tmp78331
                                                 (let ((__tmp78332
                                                        (let ((__tmp78333
                                                               (string-append
                                                                _modstr78216_
                                                                '"__rt")))
                                                          (declare (not safe))
                                                          (_registry-entry78188_
                                                           __tmp78333))))
                                                   (declare (not safe))
                                                   (cons __tmp78332
                                                         _registry78193_))))
                                            (declare (not safe))
                                            (cons __tmp78334 __tmp78331))))
                                    (declare (not safe))
                                    (_lp78190_ _rest78213_ __tmp78330)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7819478202_))
                              (let ((_hd7819978221_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7819478202_)))
                                    (_tl7820078223_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7819478202_))))
                                (let* ((_mod78226_ _hd7819978221_)
                                       (_rest78228_ _tl7820078223_))
                                  (declare (not safe))
                                  (_K7819878218_ _rest78228_ _mod78226_)))
                              (let ()
                                (declare (not safe))
                                (_else7819678210_)))))))
                (current-module-registry _module-registry78230_))
              (current-readtable __*readtable*)
              (random-source-randomize! default-random-source)
              (set! __runtime-initialized '#t)))))
    (define __expander-loaded '#f)
    (define __runtime-initialized '#f)
    (define gerbil-load-expander!
      (lambda ()
        (if __expander-loaded
            '#!void
            (begin
              (let () (declare (not safe)) (gerbil-runtime-init! '()))
              (let () (declare (not safe)) (__load-gxi))
              (set! __expander-loaded '#t)))))))
