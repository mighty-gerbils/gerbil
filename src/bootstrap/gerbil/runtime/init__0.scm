(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708451992)
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
        (letrec* ((_+readtable+75253_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core75255_ (gx#import-module ':gerbil/core))
                 (_pre75257_ (gx#make-prelude-context _core75255_)))
            (gx#current-expander-module-prelude _pre75257_)
            (gx#core-bind-root-syntax! ':<core> _pre75257_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port75260_)
             (input-port-readtable-set! _port75260_ _+readtable+75253_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port75262_)
             (output-port-readtable-set!
              _port75262_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port75262_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline75250_) '#!void))
    (define load-scheme
      (lambda (_path75245_)
        (let ((__tmp75264
               (lambda ()
                 (let ((__tmp75265 (lambda _args75248_ '#f)))
                   (declare (not safe))
                   (##load _path75245_ __tmp75265 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp75264
           __loading-scheme-source
           _path75245_))))
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
      (lambda _paths75240_
        (apply add-library-load-path _paths75240_)
        (apply add-expander-load-path _paths75240_)))
    (define add-library-load-path
      (lambda _paths75229_
        (let* ((_current75231_ (current-module-library-path))
               (_paths75233_ (map path-expand _paths75229_))
               (_paths75237_
                (let ((__tmp75266
                       (lambda (_x75235_)
                         (let ((__tmp75267 (member _x75235_ _current75231_)))
                           (declare (not safe))
                           (not __tmp75267)))))
                  (declare (not safe))
                  (filter __tmp75266 _paths75233_))))
          (current-module-library-path (append _current75231_ _paths75237_)))))
    (define add-expander-load-path
      (lambda _paths75218_
        (let* ((_current75220_ (gx#current-expander-module-library-path))
               (_paths75222_ (map path-expand _paths75218_))
               (_paths75226_
                (let ((__tmp75268
                       (lambda (_x75224_)
                         (let ((__tmp75269 (member _x75224_ _current75220_)))
                           (declare (not safe))
                           (not __tmp75269)))))
                  (declare (not safe))
                  (filter __tmp75268 _paths75222_))))
          (gx#current-expander-module-library-path
           (append _current75220_ _paths75226_)))))
    (define cons-load-path
      (lambda _paths75216_
        (apply cons-library-load-path _paths75216_)
        (apply cons-expander-load-path _paths75216_)))
    (define cons-library-load-path
      (lambda _paths75211_
        (let ((_current75213_ (current-module-library-path))
              (_paths75214_ (map path-expand _paths75211_)))
          (current-module-library-path (append _paths75214_ _current75213_)))))
    (define cons-expander-load-path
      (lambda _paths75206_
        (let ((_current75208_ (gx#current-expander-module-library-path))
              (_paths75209_ (map path-expand _paths75206_)))
          (gx#current-expander-module-library-path
           (append _paths75209_ _current75208_)))))
    (define with-cons-load-path
      (lambda (_thunk75202_ . _paths75203_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk75202_
                        _paths75203_))
               _paths75203_)))
    (define with-cons-library-load-path
      (lambda (_thunk75195_ . _paths75196_)
        (let ((_current75198_ (current-module-library-path))
              (_paths75199_ (map path-expand _paths75196_)))
          (let ((__tmp75271 (lambda () (_thunk75195_)))
                (__tmp75270 (append _paths75199_ _current75198_)))
            (declare (not safe))
            (call-with-parameters
             __tmp75271
             current-module-library-path
             __tmp75270)))))
    (define with-cons-expander-load-path
      (lambda (_thunk75188_ . _paths75189_)
        (let ((_current75191_ (gx#current-expander-module-library-path))
              (_paths75192_ (map path-expand _paths75189_)))
          (let ((__tmp75273 (lambda () (_thunk75188_)))
                (__tmp75272 (append _paths75192_ _current75191_)))
            (declare (not safe))
            (call-with-parameters
             __tmp75273
             gx#current-expander-module-library-path
             __tmp75272)))))
    (define __expand-source
      (lambda (_src75174_)
        (letrec ((_expand75176_
                  (lambda (_src75186_)
                    (let ((__tmp75274
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src75186_)))))
                      (declare (not safe))
                      (__compile-top __tmp75274))))
                 (_no-expand75177_
                  (lambda (_src75182_)
                    (if (__loading-scheme-source)
                        _src75182_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src75182_))
                            (let ((_code75184_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src75182_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code75184_))
                                  (if (let ((__tmp75275
                                             (let ()
                                               (declare (not safe))
                                               (##car _code75184_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp75275))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code75184_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e75179_
                 (let () (declare (not safe)) (_no-expand75177_ _src75174_))))
            (if _$e75179_
                _$e75179_
                (let () (declare (not safe)) (_expand75176_ _src75174_)))))))
    (define __macro-descr
      (lambda (_src75160_ _def-syntax?75161_)
        (letrec ((_fail!75163_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src75160_))))
                 (_make-descr75164_
                  (lambda (_size75168_)
                    (let ((_expander75171_
                           (let ((__tmp75276
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src75160_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp75276
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander75171_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?75161_
                             _size75168_
                             _expander75171_
                             _src75160_))
                          (let () (declare (not safe)) (_fail!75163_)))))))
          (if _def-syntax?75161_
              (let () (declare (not safe)) (_make-descr75164_ '-1))
              (let ((_code75166_
                     (let () (declare (not safe)) (##source-code _src75160_))))
                (if (and (let () (declare (not safe)) (##pair? _code75166_))
                         (let ((__tmp75277
                                (let ((__tmp75278
                                       (let ((__tmp75279
                                              (let ()
                                                (declare (not safe))
                                                (##car _code75166_))))
                                         (declare (not safe))
                                         (##sourcify __tmp75279 _src75160_))))
                                  (declare (not safe))
                                  (##source-code __tmp75278))))
                           (declare (not safe))
                           (##memq __tmp75277 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src75160_ _src75160_ '-3))
                      (let ((__tmp75280
                             (let ((__tmp75281
                                    (let ((__tmp75282
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code75166_))))
                                      (declare (not safe))
                                      (##sourcify __tmp75282 _src75160_))))
                               (declare (not safe))
                               (##form-size __tmp75281))))
                        (declare (not safe))
                        (_make-descr75164_ __tmp75280)))
                    (let () (declare (not safe)) (_fail!75163_))))))))
    (define __source->syntax
      (lambda (_src75154_)
        (let _recur75156_ ((_e75158_ _src75154_))
          (if (let () (declare (not safe)) (##source? _e75158_))
              (let ((__tmp75284
                     (let ((__tmp75285
                            (let ()
                              (declare (not safe))
                              (##source-code _e75158_))))
                       (declare (not safe))
                       (_recur75156_ __tmp75285)))
                    (__tmp75283
                     (let () (declare (not safe)) (##source-locat _e75158_))))
                (declare (not safe))
                (##structure AST::t __tmp75284 __tmp75283))
              (if (let () (declare (not safe)) (pair? _e75158_))
                  (let ((__tmp75288
                         (let ((__tmp75289
                                (let ()
                                  (declare (not safe))
                                  (##car _e75158_))))
                           (declare (not safe))
                           (_recur75156_ __tmp75289)))
                        (__tmp75286
                         (let ((__tmp75287
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e75158_))))
                           (declare (not safe))
                           (_recur75156_ __tmp75287))))
                    (declare (not safe))
                    (cons __tmp75288 __tmp75286))
                  (if (let () (declare (not safe)) (vector? _e75158_))
                      (vector-map _recur75156_ _e75158_)
                      (if (let () (declare (not safe)) (box? _e75158_))
                          (let ((__tmp75290
                                 (let ((__tmp75291 (unbox _e75158_)))
                                   (declare (not safe))
                                   (_recur75156_ __tmp75291))))
                            (declare (not safe))
                            (box __tmp75290))
                          _e75158_)))))))
    (define __compile-top-source
      (lambda (_stx75152_)
        (let ((__tmp75292
               (let () (declare (not safe)) (__compile-top _stx75152_))))
          (declare (not safe))
          (cons '__noexpand: __tmp75292))))
    (define __compile-top
      (lambda (_stx75150_)
        (let ((__tmp75293 (gx#core-compile-top-syntax _stx75150_)))
          (declare (not safe))
          (__compile __tmp75293))))
    (define __eval-import
      (lambda (_in75131_)
        (letrec* ((_mods75133_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import175134_
                   (lambda (_in75141_ _phi75142_)
                     (if (gx#module-import? _in75141_)
                         (let ((_iphi75144_
                                (fx+ _phi75142_
                                     (gx#module-import-phi _in75141_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi75144_))
                               (let ((__tmp75294
                                      (gx#module-export-context
                                       (gx#module-import-source _in75141_))))
                                 (declare (not safe))
                                 (_eval175135_ __tmp75294))
                               '#!void))
                         (if (gx#module-context? _in75141_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi75142_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval175135_ _in75141_))
                                 '#!void)
                             (if (gx#import-set? _in75141_)
                                 (let ((_iphi75146_
                                        (fx+ _phi75142_
                                             (gx#import-set-phi _in75141_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi75146_))
                                       (let ((__tmp75295
                                              (gx#import-set-source
                                               _in75141_)))
                                         (declare (not safe))
                                         (_eval175135_ __tmp75295))
                                       (if (fxpositive? _iphi75146_)
                                           (for-each
                                            (lambda (_in75148_)
                                              (let ()
                                                (declare (not safe))
                                                (_import175134_
                                                 _in75148_
                                                 _iphi75146_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in75141_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in75141_)))))))
                  (_eval175135_
                   (lambda (_ctx75139_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods75133_ _ctx75139_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods75133_ _ctx75139_ '#t))
                           (__eval-module _ctx75139_))))))
          (if (let () (declare (not safe)) (pair? _in75131_))
              (for-each
               (lambda (_in75137_)
                 (let () (declare (not safe)) (_import175134_ _in75137_ '0)))
               _in75131_)
              (let () (declare (not safe)) (_import175134_ _in75131_ '0))))))
    (define __eval-module
      (lambda (_obj75129_) (gx#core-eval-module _obj75129_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules75064_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home75066_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir75068_ (path-expand '"lib" _home75066_))
                     (_userpath75070_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath75072_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir75068_ '()))
                          (let ((__tmp75296
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir75068_ '()))))
                            (declare (not safe))
                            (cons _userpath75070_ __tmp75296))))
                     (_loadpath75081_
                      (let ((_$e75074_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e75074_
                            ((lambda (_envvar75077_)
                               (append (let ((__tmp75298
                                              (lambda (_x75079_)
                                                (let ((__tmp75299
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x75079_))))
                                                  (declare (not safe))
                                                  (not __tmp75299))))
                                             (__tmp75297
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar75077_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp75298 __tmp75297))
                                       _loadpath75072_))
                             _$e75074_)
                            _loadpath75072_))))
                (current-module-library-path _loadpath75081_))
              (let* ((_registry-entry75086_
                      (lambda (_m75084_)
                        (let ()
                          (declare (not safe))
                          (cons _m75084_ 'builtin))))
                     (_module-registry75126_
                      (let _lp75088_ ((_rest75090_ _builtin-modules75064_)
                                      (_registry75091_ '()))
                        (let* ((_rest7509275100_ _rest75090_)
                               (_else7509475108_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry75091_))))
                               (_K7509675114_
                                (lambda (_rest75111_ _mod75112_)
                                  (let ((__tmp75300
                                         (let ((__tmp75304
                                                (let ((__tmp75305
                                                       (string-append
                                                        _mod75112_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry75086_
                                                   __tmp75305)))
                                               (__tmp75301
                                                (let ((__tmp75302
                                                       (let ((__tmp75303
                                                              (string-append
                                                               _mod75112_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry75086_
                                                          __tmp75303))))
                                                  (declare (not safe))
                                                  (cons __tmp75302
                                                        _registry75091_))))
                                           (declare (not safe))
                                           (cons __tmp75304 __tmp75301))))
                                    (declare (not safe))
                                    (_lp75088_ _rest75111_ __tmp75300)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7509275100_))
                              (let ((_hd7509775117_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7509275100_)))
                                    (_tl7509875119_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7509275100_))))
                                (let* ((_mod75122_ _hd7509775117_)
                                       (_rest75124_ _tl7509875119_))
                                  (declare (not safe))
                                  (_K7509675114_ _rest75124_ _mod75122_)))
                              (let ()
                                (declare (not safe))
                                (_else7509475108_)))))))
                (current-module-registry _module-registry75126_))
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
