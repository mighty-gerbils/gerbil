(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708168068)
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
        (letrec* ((_+readtable+128541_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core128543_ (gx#import-module ':gerbil/core))
                 (_pre128545_ (gx#make-prelude-context _core128543_)))
            (gx#current-expander-module-prelude _pre128545_)
            (gx#core-bind-root-syntax! ':<core> _pre128545_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port128548_)
             (input-port-readtable-set! _port128548_ _+readtable+128541_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port128550_)
             (output-port-readtable-set!
              _port128550_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port128550_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline128538_) '#!void))
    (define load-scheme
      (lambda (_path128533_)
        (let ((__tmp133120
               (lambda ()
                 (let ((__tmp133121 (lambda _args128536_ '#f)))
                   (declare (not safe))
                   (##load _path128533_ __tmp133121 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp133120
           __loading-scheme-source
           _path128533_))))
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
      (lambda _paths128528_
        (apply add-library-load-path _paths128528_)
        (apply add-expander-load-path _paths128528_)))
    (define add-library-load-path
      (lambda _paths128517_
        (let* ((_current128519_ (current-module-library-path))
               (_paths128521_ (map path-expand _paths128517_))
               (_paths128525_
                (let ((__tmp133122
                       (lambda (_x128523_)
                         (let ((__tmp133123
                                (member _x128523_ _current128519_)))
                           (declare (not safe))
                           (not __tmp133123)))))
                  (declare (not safe))
                  (filter __tmp133122 _paths128521_))))
          (current-module-library-path
           (append _current128519_ _paths128525_)))))
    (define add-expander-load-path
      (lambda _paths128506_
        (let* ((_current128508_ (gx#current-expander-module-library-path))
               (_paths128510_ (map path-expand _paths128506_))
               (_paths128514_
                (let ((__tmp133124
                       (lambda (_x128512_)
                         (let ((__tmp133125
                                (member _x128512_ _current128508_)))
                           (declare (not safe))
                           (not __tmp133125)))))
                  (declare (not safe))
                  (filter __tmp133124 _paths128510_))))
          (gx#current-expander-module-library-path
           (append _current128508_ _paths128514_)))))
    (define cons-load-path
      (lambda _paths128504_
        (apply cons-library-load-path _paths128504_)
        (apply cons-expander-load-path _paths128504_)))
    (define cons-library-load-path
      (lambda _paths128499_
        (let ((_current128501_ (current-module-library-path))
              (_paths128502_ (map path-expand _paths128499_)))
          (current-module-library-path
           (append _paths128502_ _current128501_)))))
    (define cons-expander-load-path
      (lambda _paths128494_
        (let ((_current128496_ (gx#current-expander-module-library-path))
              (_paths128497_ (map path-expand _paths128494_)))
          (gx#current-expander-module-library-path
           (append _paths128497_ _current128496_)))))
    (define with-cons-load-path
      (lambda (_thunk128490_ . _paths128491_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk128490_
                        _paths128491_))
               _paths128491_)))
    (define with-cons-library-load-path
      (lambda (_thunk128483_ . _paths128484_)
        (let ((_current128486_ (current-module-library-path))
              (_paths128487_ (map path-expand _paths128484_)))
          (let ((__tmp133127 (lambda () (_thunk128483_)))
                (__tmp133126 (append _paths128487_ _current128486_)))
            (declare (not safe))
            (call-with-parameters
             __tmp133127
             current-module-library-path
             __tmp133126)))))
    (define with-cons-expander-load-path
      (lambda (_thunk128476_ . _paths128477_)
        (let ((_current128479_ (gx#current-expander-module-library-path))
              (_paths128480_ (map path-expand _paths128477_)))
          (let ((__tmp133129 (lambda () (_thunk128476_)))
                (__tmp133128 (append _paths128480_ _current128479_)))
            (declare (not safe))
            (call-with-parameters
             __tmp133129
             gx#current-expander-module-library-path
             __tmp133128)))))
    (define __expand-source
      (lambda (_src128462_)
        (letrec ((_expand128464_
                  (lambda (_src128474_)
                    (let ((__tmp133130
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src128474_)))))
                      (declare (not safe))
                      (__compile-top __tmp133130))))
                 (_no-expand128465_
                  (lambda (_src128470_)
                    (if (__loading-scheme-source)
                        _src128470_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src128470_))
                            (let ((_code128472_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src128470_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code128472_))
                                  (if (let ((__tmp133131
                                             (let ()
                                               (declare (not safe))
                                               (##car _code128472_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp133131))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code128472_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e128467_
                 (let ()
                   (declare (not safe))
                   (_no-expand128465_ _src128462_))))
            (if _$e128467_
                _$e128467_
                (let () (declare (not safe)) (_expand128464_ _src128462_)))))))
    (define __macro-descr
      (lambda (_src128448_ _def-syntax?128449_)
        (letrec ((_fail!128451_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src128448_))))
                 (_make-descr128452_
                  (lambda (_size128456_)
                    (let ((_expander128459_
                           (let ((__tmp133132
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src128448_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp133132
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander128459_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?128449_
                             _size128456_
                             _expander128459_
                             _src128448_))
                          (let () (declare (not safe)) (_fail!128451_)))))))
          (if _def-syntax?128449_
              (let () (declare (not safe)) (_make-descr128452_ '-1))
              (let ((_code128454_
                     (let ()
                       (declare (not safe))
                       (##source-code _src128448_))))
                (if (and (let () (declare (not safe)) (##pair? _code128454_))
                         (let ((__tmp133136
                                (let ((__tmp133137
                                       (let ((__tmp133138
                                              (let ()
                                                (declare (not safe))
                                                (##car _code128454_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp133138
                                          _src128448_))))
                                  (declare (not safe))
                                  (##source-code __tmp133137))))
                           (declare (not safe))
                           (##memq __tmp133136 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src128448_ _src128448_ '-3))
                      (let ((__tmp133133
                             (let ((__tmp133134
                                    (let ((__tmp133135
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code128454_))))
                                      (declare (not safe))
                                      (##sourcify __tmp133135 _src128448_))))
                               (declare (not safe))
                               (##form-size __tmp133134))))
                        (declare (not safe))
                        (_make-descr128452_ __tmp133133)))
                    (let () (declare (not safe)) (_fail!128451_))))))))
    (define __source->syntax
      (lambda (_src128442_)
        (let _recur128444_ ((_e128446_ _src128442_))
          (if (let () (declare (not safe)) (##source? _e128446_))
              (let ((__tmp133146
                     (let ((__tmp133147
                            (let ()
                              (declare (not safe))
                              (##source-code _e128446_))))
                       (declare (not safe))
                       (_recur128444_ __tmp133147)))
                    (__tmp133145
                     (let () (declare (not safe)) (##source-locat _e128446_))))
                (declare (not safe))
                (##structure AST::t __tmp133146 __tmp133145))
              (if (let () (declare (not safe)) (pair? _e128446_))
                  (let ((__tmp133143
                         (let ((__tmp133144
                                (let ()
                                  (declare (not safe))
                                  (##car _e128446_))))
                           (declare (not safe))
                           (_recur128444_ __tmp133144)))
                        (__tmp133141
                         (let ((__tmp133142
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e128446_))))
                           (declare (not safe))
                           (_recur128444_ __tmp133142))))
                    (declare (not safe))
                    (cons __tmp133143 __tmp133141))
                  (if (let () (declare (not safe)) (vector? _e128446_))
                      (vector-map _recur128444_ _e128446_)
                      (if (let () (declare (not safe)) (box? _e128446_))
                          (let ((__tmp133139
                                 (let ((__tmp133140 (unbox _e128446_)))
                                   (declare (not safe))
                                   (_recur128444_ __tmp133140))))
                            (declare (not safe))
                            (box __tmp133139))
                          _e128446_)))))))
    (define __compile-top-source
      (lambda (_stx128440_)
        (let ((__tmp133148
               (let () (declare (not safe)) (__compile-top _stx128440_))))
          (declare (not safe))
          (cons '__noexpand: __tmp133148))))
    (define __compile-top
      (lambda (_stx128438_)
        (let ((__tmp133149 (gx#core-compile-top-syntax _stx128438_)))
          (declare (not safe))
          (__compile __tmp133149))))
    (define __eval-import
      (lambda (_in128419_)
        (letrec* ((_mods128421_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1128422_
                   (lambda (_in128429_ _phi128430_)
                     (if (gx#module-import? _in128429_)
                         (let ((_iphi128432_
                                (fx+ _phi128430_
                                     (gx#module-import-phi _in128429_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi128432_))
                               (let ((__tmp133151
                                      (gx#module-export-context
                                       (gx#module-import-source _in128429_))))
                                 (declare (not safe))
                                 (_eval1128423_ __tmp133151))
                               '#!void))
                         (if (gx#module-context? _in128429_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi128430_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1128423_ _in128429_))
                                 '#!void)
                             (if (gx#import-set? _in128429_)
                                 (let ((_iphi128434_
                                        (fx+ _phi128430_
                                             (gx#import-set-phi _in128429_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi128434_))
                                       (let ((__tmp133150
                                              (gx#import-set-source
                                               _in128429_)))
                                         (declare (not safe))
                                         (_eval1128423_ __tmp133150))
                                       (if (fxpositive? _iphi128434_)
                                           (for-each
                                            (lambda (_in128436_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1128422_
                                                 _in128436_
                                                 _iphi128434_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in128429_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in128429_))))))
                  (_eval1128423_
                   (lambda (_ctx128427_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods128421_ _ctx128427_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods128421_ _ctx128427_ '#t))
                           (__eval-module _ctx128427_))))))
          (if (let () (declare (not safe)) (pair? _in128419_))
              (for-each
               (lambda (_in128425_)
                 (let () (declare (not safe)) (_import1128422_ _in128425_ '0)))
               _in128419_)
              (let () (declare (not safe)) (_import1128422_ _in128419_ '0))))))
    (define __eval-module
      (lambda (_obj128412_)
        (let* ((_key128414_
                (if (gx#module-context? _obj128412_)
                    (gx#module-context-path _obj128412_)
                    _obj128412_))
               (_$e128416_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key128414_ '#f))))
          (if _$e128416_
              (values _$e128416_)
              (gx#core-eval-module _obj128412_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules128347_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home128349_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir128351_ (path-expand '"lib" _home128349_))
                     (_userpath128353_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath128355_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir128351_ '()))
                          (let ((__tmp133152
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir128351_ '()))))
                            (declare (not safe))
                            (cons _userpath128353_ __tmp133152))))
                     (_loadpath128364_
                      (let ((_$e128357_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e128357_
                            ((lambda (_envvar128360_)
                               (append (let ((__tmp133154
                                              (lambda (_x128362_)
                                                (let ((__tmp133155
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x128362_))))
                                                  (declare (not safe))
                                                  (not __tmp133155))))
                                             (__tmp133153
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar128360_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp133154 __tmp133153))
                                       _loadpath128355_))
                             _$e128357_)
                            _loadpath128355_))))
                (current-module-library-path _loadpath128364_))
              (let* ((_registry-entry128369_
                      (lambda (_m128367_)
                        (let ()
                          (declare (not safe))
                          (cons _m128367_ 'builtin))))
                     (_module-registry128409_
                      (let _lp128371_ ((_rest128373_ _builtin-modules128347_)
                                       (_registry128374_ '()))
                        (let* ((_rest128375128383_ _rest128373_)
                               (_else128377128391_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry128374_))))
                               (_K128379128397_
                                (lambda (_rest128394_ _mod128395_)
                                  (let ((__tmp133156
                                         (let ((__tmp133160
                                                (let ((__tmp133161
                                                       (string-append
                                                        _mod128395_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry128369_
                                                   __tmp133161)))
                                               (__tmp133157
                                                (let ((__tmp133158
                                                       (let ((__tmp133159
                                                              (string-append
                                                               _mod128395_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry128369_
                                                          __tmp133159))))
                                                  (declare (not safe))
                                                  (cons __tmp133158
                                                        _registry128374_))))
                                           (declare (not safe))
                                           (cons __tmp133160 __tmp133157))))
                                    (declare (not safe))
                                    (_lp128371_ _rest128394_ __tmp133156)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest128375128383_))
                              (let ((_hd128380128400_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest128375128383_)))
                                    (_tl128381128402_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest128375128383_))))
                                (let* ((_mod128405_ _hd128380128400_)
                                       (_rest128407_ _tl128381128402_))
                                  (declare (not safe))
                                  (_K128379128397_ _rest128407_ _mod128405_)))
                              (let ()
                                (declare (not safe))
                                (_else128377128391_)))))))
                (current-module-registry _module-registry128409_))
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
