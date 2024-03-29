(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1711709197)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_+readtable+78259_ __*readtable*))
          (let* ((_core78261_ (gx#import-module ':gerbil/core))
                 (_pre78263_ (gx#make-prelude-context _core78261_)))
            (gx#current-expander-module-prelude _pre78263_)
            (gx#core-bind-root-syntax! ':<core> _pre78263_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp78270
                 (lambda (_port78266_)
                   (input-port-readtable-set! _port78266_ _+readtable+78259_)))
                (__tmp78269 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp78270 __tmp78269))
          (let ((__tmp78272
                 (lambda (_port78268_)
                   (output-port-readtable-set!
                    _port78268_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _port78268_)
                     '#t))))
                (__tmp78271 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp78272 __tmp78271)))))
    (define __gxi-init-interactive! (lambda (_cmdline78256_) '#!void))
    (define load-scheme
      (lambda (_path78251_)
        (let ((__tmp78273
               (lambda ()
                 (let ((__tmp78274 (lambda _args78254_ '#f)))
                   (declare (not safe))
                   (##load _path78251_ __tmp78274 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters __tmp78273 __scheme-source _path78251_))))
    (define __expand-source
      (lambda (_src78237_)
        (letrec ((_expand78239_
                  (lambda (_src78249_)
                    (let ((__tmp78275
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src78249_)))))
                      (declare (not safe))
                      (__compile-top __tmp78275))))
                 (_no-expand78240_
                  (lambda (_src78245_)
                    (if (__scheme-source)
                        _src78245_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src78245_))
                            (let ((_code78247_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src78245_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code78247_))
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _code78247_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code78247_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e78242_
                 (let () (declare (not safe)) (_no-expand78240_ _src78237_))))
            (if _$e78242_
                _$e78242_
                (let () (declare (not safe)) (_expand78239_ _src78237_)))))))
    (define __macro-descr
      (lambda (_src78223_ _def-syntax?78224_)
        (letrec ((_fail!78226_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src78223_))))
                 (_make-descr78227_
                  (lambda (_size78231_)
                    (let ((_expander78234_
                           (let ((__tmp78276
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src78223_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp78276
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander78234_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?78224_
                             _size78231_
                             _expander78234_
                             _src78223_))
                          (let () (declare (not safe)) (_fail!78226_)))))))
          (if _def-syntax?78224_
              (let () (declare (not safe)) (_make-descr78227_ '-1))
              (let ((_code78229_
                     (let () (declare (not safe)) (##source-code _src78223_))))
                (if (and (let () (declare (not safe)) (##pair? _code78229_))
                         (let ((__tmp78277
                                (let ((__tmp78278
                                       (let ((__tmp78279
                                              (let ()
                                                (declare (not safe))
                                                (##car _code78229_))))
                                         (declare (not safe))
                                         (##sourcify __tmp78279 _src78223_))))
                                  (declare (not safe))
                                  (##source-code __tmp78278))))
                           (declare (not safe))
                           (##memq __tmp78277 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src78223_ _src78223_ '-3))
                      (let ((__tmp78280
                             (let ((__tmp78281
                                    (let ((__tmp78282
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code78229_))))
                                      (declare (not safe))
                                      (##sourcify __tmp78282 _src78223_))))
                               (declare (not safe))
                               (##form-size __tmp78281))))
                        (declare (not safe))
                        (_make-descr78227_ __tmp78280)))
                    (let () (declare (not safe)) (_fail!78226_))))))))
    (define __source->syntax
      (lambda (_src78217_)
        (let _recur78219_ ((_e78221_ _src78217_))
          (if (let () (declare (not safe)) (##source? _e78221_))
              (let ((__tmp78284
                     (let ((__tmp78285
                            (let ()
                              (declare (not safe))
                              (##source-code _e78221_))))
                       (declare (not safe))
                       (_recur78219_ __tmp78285)))
                    (__tmp78283
                     (let () (declare (not safe)) (##source-locat _e78221_))))
                (declare (not safe))
                (##structure AST::t __tmp78284 __tmp78283))
              (if (let () (declare (not safe)) (pair? _e78221_))
                  (cons (let ((__tmp78286
                               (let () (declare (not safe)) (##car _e78221_))))
                          (declare (not safe))
                          (_recur78219_ __tmp78286))
                        (let ((__tmp78287
                               (let () (declare (not safe)) (##cdr _e78221_))))
                          (declare (not safe))
                          (_recur78219_ __tmp78287)))
                  (if (let () (declare (not safe)) (vector? _e78221_))
                      (vector-map _recur78219_ _e78221_)
                      (if (let () (declare (not safe)) (box? _e78221_))
                          (box (let ((__tmp78288 (unbox _e78221_)))
                                 (declare (not safe))
                                 (_recur78219_ __tmp78288)))
                          _e78221_)))))))
    (define __compile-top-source
      (lambda (_stx78215_)
        (cons '__noexpand:
              (let () (declare (not safe)) (__compile-top _stx78215_)))))
    (define __compile-top
      (lambda (_stx78213_)
        (let ((__tmp78289 (gx#core-compile-top-syntax _stx78213_)))
          (declare (not safe))
          (__compile __tmp78289))))
    (define __eval-import
      (lambda (_in78194_)
        (letrec* ((_mods78196_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import178197_
                   (lambda (_in78204_ _phi78205_)
                     (if (gx#module-import? _in78204_)
                         (let ((_iphi78207_
                                (fx+ _phi78205_
                                     (gx#module-import-phi _in78204_))))
                           (if (let ()
                                 (declare (not safe))
                                 (##fxzero? _iphi78207_))
                               (let ((__tmp78290
                                      (gx#module-export-context
                                       (gx#module-import-source _in78204_))))
                                 (declare (not safe))
                                 (_eval178198_ __tmp78290))
                               '#!void))
                         (if (gx#module-context? _in78204_)
                             (if (fxzero? _phi78205_)
                                 (let ()
                                   (declare (not safe))
                                   (_eval178198_ _in78204_))
                                 '#!void)
                             (if (gx#import-set? _in78204_)
                                 (let ((_iphi78209_
                                        (fx+ _phi78205_
                                             (gx#import-set-phi _in78204_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##fxzero? _iphi78209_))
                                       (let ((__tmp78291
                                              (gx#import-set-source
                                               _in78204_)))
                                         (declare (not safe))
                                         (_eval178198_ __tmp78291))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxpositive? _iphi78209_))
                                           (for-each
                                            (lambda (_in78211_)
                                              (let ()
                                                (declare (not safe))
                                                (_import178197_
                                                 _in78211_
                                                 _iphi78209_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in78204_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in78204_)))))))
                  (_eval178198_
                   (lambda (_ctx78202_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods78196_ _ctx78202_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods78196_ _ctx78202_ '#t))
                           (let ()
                             (declare (not safe))
                             (gx#core-eval-module _ctx78202_)))))))
          (if (let () (declare (not safe)) (pair? _in78194_))
              (for-each
               (lambda (_in78200_)
                 (let () (declare (not safe)) (_import178197_ _in78200_ '0)))
               _in78194_)
              (let () (declare (not safe)) (_import178197_ _in78194_ '0))))))
    (define __eval-module
      (lambda (_obj78192_) (gx#core-eval-module _obj78192_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules78170_)
        (if __runtime-initialized
            '#!void
            (begin
              (dump-stack-trace? '#t)
              (let* ((_home78172_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir78174_ (path-expand '"lib" _home78172_))
                     (_userpath78176_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath78178_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _libdir78174_ '())
                          (cons _userpath78176_ (cons _libdir78174_ '()))))
                     (_loadpath78187_
                      (let ((_$e78180_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _$e78180_
                            ((lambda (_envvar78183_)
                               (let ((__tmp78292
                                      (let ((__tmp78294
                                             (lambda (_x78185_)
                                               (let ((__tmp78295
                                                      (let ()
                                                        (declare (not safe))
                                                        (string-empty?
                                                         _x78185_))))
                                                 (declare (not safe))
                                                 (not __tmp78295))))
                                            (__tmp78293
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _envvar78183_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp78294 __tmp78293))))
                                 (declare (not safe))
                                 (##append __tmp78292 _loadpath78178_)))
                             _$e78180_)
                            _loadpath78178_))))
                (let () (declare (not safe)) (set-load-path! _loadpath78187_)))
              (for-each
               (lambda (_mod78190_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _mod78190_ 'builtin))
                 (let ((__tmp78296
                        (let ()
                          (declare (not safe))
                          (##string-append _mod78190_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp78296 'builtin)))
               _builtin-modules78170_)
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
