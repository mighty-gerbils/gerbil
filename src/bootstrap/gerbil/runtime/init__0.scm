(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708280333)
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
        (letrec* ((_+readtable+134380_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core134382_ (gx#import-module ':gerbil/core))
                 (_pre134384_ (gx#make-prelude-context _core134382_)))
            (gx#current-expander-module-prelude _pre134384_)
            (gx#core-bind-root-syntax! ':<core> _pre134384_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port134387_)
             (input-port-readtable-set! _port134387_ _+readtable+134380_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port134389_)
             (output-port-readtable-set!
              _port134389_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port134389_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline134377_) '#!void))
    (define load-scheme
      (lambda (_path134372_)
        (let ((__tmp138458
               (lambda ()
                 (let ((__tmp138459 (lambda _args134375_ '#f)))
                   (declare (not safe))
                   (##load _path134372_ __tmp138459 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp138458
           __loading-scheme-source
           _path134372_))))
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
      (lambda _paths134367_
        (apply add-library-load-path _paths134367_)
        (apply add-expander-load-path _paths134367_)))
    (define add-library-load-path
      (lambda _paths134356_
        (let* ((_current134358_ (current-module-library-path))
               (_paths134360_ (map path-expand _paths134356_))
               (_paths134364_
                (let ((__tmp138460
                       (lambda (_x134362_)
                         (let ((__tmp138461
                                (member _x134362_ _current134358_)))
                           (declare (not safe))
                           (not __tmp138461)))))
                  (declare (not safe))
                  (filter __tmp138460 _paths134360_))))
          (current-module-library-path
           (append _current134358_ _paths134364_)))))
    (define add-expander-load-path
      (lambda _paths134345_
        (let* ((_current134347_ (gx#current-expander-module-library-path))
               (_paths134349_ (map path-expand _paths134345_))
               (_paths134353_
                (let ((__tmp138462
                       (lambda (_x134351_)
                         (let ((__tmp138463
                                (member _x134351_ _current134347_)))
                           (declare (not safe))
                           (not __tmp138463)))))
                  (declare (not safe))
                  (filter __tmp138462 _paths134349_))))
          (gx#current-expander-module-library-path
           (append _current134347_ _paths134353_)))))
    (define cons-load-path
      (lambda _paths134343_
        (apply cons-library-load-path _paths134343_)
        (apply cons-expander-load-path _paths134343_)))
    (define cons-library-load-path
      (lambda _paths134338_
        (let ((_current134340_ (current-module-library-path))
              (_paths134341_ (map path-expand _paths134338_)))
          (current-module-library-path
           (append _paths134341_ _current134340_)))))
    (define cons-expander-load-path
      (lambda _paths134333_
        (let ((_current134335_ (gx#current-expander-module-library-path))
              (_paths134336_ (map path-expand _paths134333_)))
          (gx#current-expander-module-library-path
           (append _paths134336_ _current134335_)))))
    (define with-cons-load-path
      (lambda (_thunk134329_ . _paths134330_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk134329_
                        _paths134330_))
               _paths134330_)))
    (define with-cons-library-load-path
      (lambda (_thunk134322_ . _paths134323_)
        (let ((_current134325_ (current-module-library-path))
              (_paths134326_ (map path-expand _paths134323_)))
          (let ((__tmp138465 (lambda () (_thunk134322_)))
                (__tmp138464 (append _paths134326_ _current134325_)))
            (declare (not safe))
            (call-with-parameters
             __tmp138465
             current-module-library-path
             __tmp138464)))))
    (define with-cons-expander-load-path
      (lambda (_thunk134315_ . _paths134316_)
        (let ((_current134318_ (gx#current-expander-module-library-path))
              (_paths134319_ (map path-expand _paths134316_)))
          (let ((__tmp138467 (lambda () (_thunk134315_)))
                (__tmp138466 (append _paths134319_ _current134318_)))
            (declare (not safe))
            (call-with-parameters
             __tmp138467
             gx#current-expander-module-library-path
             __tmp138466)))))
    (define __expand-source
      (lambda (_src134301_)
        (letrec ((_expand134303_
                  (lambda (_src134313_)
                    (let ((__tmp138468
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src134313_)))))
                      (declare (not safe))
                      (__compile-top __tmp138468))))
                 (_no-expand134304_
                  (lambda (_src134309_)
                    (if (__loading-scheme-source)
                        _src134309_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src134309_))
                            (let ((_code134311_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src134309_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code134311_))
                                  (if (let ((__tmp138469
                                             (let ()
                                               (declare (not safe))
                                               (##car _code134311_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp138469))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code134311_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e134306_
                 (let ()
                   (declare (not safe))
                   (_no-expand134304_ _src134301_))))
            (if _$e134306_
                _$e134306_
                (let () (declare (not safe)) (_expand134303_ _src134301_)))))))
    (define __macro-descr
      (lambda (_src134287_ _def-syntax?134288_)
        (letrec ((_fail!134290_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src134287_))))
                 (_make-descr134291_
                  (lambda (_size134295_)
                    (let ((_expander134298_
                           (let ((__tmp138470
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src134287_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp138470
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander134298_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?134288_
                             _size134295_
                             _expander134298_
                             _src134287_))
                          (let () (declare (not safe)) (_fail!134290_)))))))
          (if _def-syntax?134288_
              (let () (declare (not safe)) (_make-descr134291_ '-1))
              (let ((_code134293_
                     (let ()
                       (declare (not safe))
                       (##source-code _src134287_))))
                (if (and (let () (declare (not safe)) (##pair? _code134293_))
                         (let ((__tmp138474
                                (let ((__tmp138475
                                       (let ((__tmp138476
                                              (let ()
                                                (declare (not safe))
                                                (##car _code134293_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp138476
                                          _src134287_))))
                                  (declare (not safe))
                                  (##source-code __tmp138475))))
                           (declare (not safe))
                           (##memq __tmp138474 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src134287_ _src134287_ '-3))
                      (let ((__tmp138471
                             (let ((__tmp138472
                                    (let ((__tmp138473
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code134293_))))
                                      (declare (not safe))
                                      (##sourcify __tmp138473 _src134287_))))
                               (declare (not safe))
                               (##form-size __tmp138472))))
                        (declare (not safe))
                        (_make-descr134291_ __tmp138471)))
                    (let () (declare (not safe)) (_fail!134290_))))))))
    (define __source->syntax
      (lambda (_src134281_)
        (let _recur134283_ ((_e134285_ _src134281_))
          (if (let () (declare (not safe)) (##source? _e134285_))
              (let ((__tmp138484
                     (let ((__tmp138485
                            (let ()
                              (declare (not safe))
                              (##source-code _e134285_))))
                       (declare (not safe))
                       (_recur134283_ __tmp138485)))
                    (__tmp138483
                     (let () (declare (not safe)) (##source-locat _e134285_))))
                (declare (not safe))
                (##structure AST::t __tmp138484 __tmp138483))
              (if (let () (declare (not safe)) (pair? _e134285_))
                  (let ((__tmp138481
                         (let ((__tmp138482
                                (let ()
                                  (declare (not safe))
                                  (##car _e134285_))))
                           (declare (not safe))
                           (_recur134283_ __tmp138482)))
                        (__tmp138479
                         (let ((__tmp138480
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e134285_))))
                           (declare (not safe))
                           (_recur134283_ __tmp138480))))
                    (declare (not safe))
                    (cons __tmp138481 __tmp138479))
                  (if (let () (declare (not safe)) (vector? _e134285_))
                      (vector-map _recur134283_ _e134285_)
                      (if (let () (declare (not safe)) (box? _e134285_))
                          (let ((__tmp138477
                                 (let ((__tmp138478 (unbox _e134285_)))
                                   (declare (not safe))
                                   (_recur134283_ __tmp138478))))
                            (declare (not safe))
                            (box __tmp138477))
                          _e134285_)))))))
    (define __compile-top-source
      (lambda (_stx134279_)
        (let ((__tmp138486
               (let () (declare (not safe)) (__compile-top _stx134279_))))
          (declare (not safe))
          (cons '__noexpand: __tmp138486))))
    (define __compile-top
      (lambda (_stx134277_)
        (let ((__tmp138487 (gx#core-compile-top-syntax _stx134277_)))
          (declare (not safe))
          (__compile __tmp138487))))
    (define __eval-import
      (lambda (_in134258_)
        (letrec* ((_mods134260_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import1134261_
                   (lambda (_in134268_ _phi134269_)
                     (if (gx#module-import? _in134268_)
                         (let ((_iphi134271_
                                (fx+ _phi134269_
                                     (gx#module-import-phi _in134268_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi134271_))
                               (let ((__tmp138489
                                      (gx#module-export-context
                                       (gx#module-import-source _in134268_))))
                                 (declare (not safe))
                                 (_eval1134262_ __tmp138489))
                               '#!void))
                         (if (gx#module-context? _in134268_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi134269_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1134262_ _in134268_))
                                 '#!void)
                             (if (gx#import-set? _in134268_)
                                 (let ((_iphi134273_
                                        (fx+ _phi134269_
                                             (gx#import-set-phi _in134268_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi134273_))
                                       (let ((__tmp138488
                                              (gx#import-set-source
                                               _in134268_)))
                                         (declare (not safe))
                                         (_eval1134262_ __tmp138488))
                                       (if (fxpositive? _iphi134273_)
                                           (for-each
                                            (lambda (_in134275_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1134261_
                                                 _in134275_
                                                 _iphi134273_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in134268_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in134268_))))))
                  (_eval1134262_
                   (lambda (_ctx134266_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods134260_ _ctx134266_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods134260_ _ctx134266_ '#t))
                           (__eval-module _ctx134266_))))))
          (if (let () (declare (not safe)) (pair? _in134258_))
              (for-each
               (lambda (_in134264_)
                 (let () (declare (not safe)) (_import1134261_ _in134264_ '0)))
               _in134258_)
              (let () (declare (not safe)) (_import1134261_ _in134258_ '0))))))
    (define __eval-module
      (lambda (_obj134256_) (gx#core-eval-module _obj134256_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules134191_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home134193_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir134195_ (path-expand '"lib" _home134193_))
                     (_userpath134197_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath134199_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir134195_ '()))
                          (let ((__tmp138490
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir134195_ '()))))
                            (declare (not safe))
                            (cons _userpath134197_ __tmp138490))))
                     (_loadpath134208_
                      (let ((_$e134201_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e134201_
                            ((lambda (_envvar134204_)
                               (append (let ((__tmp138492
                                              (lambda (_x134206_)
                                                (let ((__tmp138493
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x134206_))))
                                                  (declare (not safe))
                                                  (not __tmp138493))))
                                             (__tmp138491
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar134204_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp138492 __tmp138491))
                                       _loadpath134199_))
                             _$e134201_)
                            _loadpath134199_))))
                (current-module-library-path _loadpath134208_))
              (let* ((_registry-entry134213_
                      (lambda (_m134211_)
                        (let ()
                          (declare (not safe))
                          (cons _m134211_ 'builtin))))
                     (_module-registry134253_
                      (let _lp134215_ ((_rest134217_ _builtin-modules134191_)
                                       (_registry134218_ '()))
                        (let* ((_rest134219134227_ _rest134217_)
                               (_else134221134235_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry134218_))))
                               (_K134223134241_
                                (lambda (_rest134238_ _mod134239_)
                                  (let ((__tmp138494
                                         (let ((__tmp138498
                                                (let ((__tmp138499
                                                       (string-append
                                                        _mod134239_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry134213_
                                                   __tmp138499)))
                                               (__tmp138495
                                                (let ((__tmp138496
                                                       (let ((__tmp138497
                                                              (string-append
                                                               _mod134239_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry134213_
                                                          __tmp138497))))
                                                  (declare (not safe))
                                                  (cons __tmp138496
                                                        _registry134218_))))
                                           (declare (not safe))
                                           (cons __tmp138498 __tmp138495))))
                                    (declare (not safe))
                                    (_lp134215_ _rest134238_ __tmp138494)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest134219134227_))
                              (let ((_hd134224134244_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest134219134227_)))
                                    (_tl134225134246_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest134219134227_))))
                                (let* ((_mod134249_ _hd134224134244_)
                                       (_rest134251_ _tl134225134246_))
                                  (declare (not safe))
                                  (_K134223134241_ _rest134251_ _mod134249_)))
                              (let ()
                                (declare (not safe))
                                (_else134221134235_)))))))
                (current-module-registry _module-registry134253_))
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
