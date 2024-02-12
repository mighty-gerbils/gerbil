(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707773068)
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
        (letrec* ((_+readtable+120689_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core120691_ (gx#import-module ':gerbil/core))
                 (_pre120693_ (gx#make-prelude-context _core120691_)))
            (gx#current-expander-module-prelude _pre120693_)
            (gx#core-bind-root-syntax! ':<core> _pre120693_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port120696_)
             (input-port-readtable-set! _port120696_ _+readtable+120689_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port120698_)
             (output-port-readtable-set!
              _port120698_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port120698_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline120686_) '#!void))
    (define load-scheme
      (lambda (_path120681_)
        (let ((__tmp125268
               (lambda ()
                 (let ((__tmp125269 (lambda _args120684_ '#f)))
                   (declare (not safe))
                   (##load _path120681_ __tmp125269 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp125268
           __loading-scheme-source
           _path120681_))))
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
      (lambda _paths120676_
        (apply add-library-load-path _paths120676_)
        (apply add-expander-load-path _paths120676_)))
    (define add-library-load-path
      (lambda _paths120665_
        (let* ((_current120667_ (current-module-library-path))
               (_paths120669_ (map path-expand _paths120665_))
               (_paths120673_
                (let ((__tmp125270
                       (lambda (_x120671_)
                         (let ((__tmp125271
                                (member _x120671_ _current120667_)))
                           (declare (not safe))
                           (not __tmp125271)))))
                  (declare (not safe))
                  (filter __tmp125270 _paths120669_))))
          (current-module-library-path
           (append _current120667_ _paths120673_)))))
    (define add-expander-load-path
      (lambda _paths120654_
        (let* ((_current120656_ (gx#current-expander-module-library-path))
               (_paths120658_ (map path-expand _paths120654_))
               (_paths120662_
                (let ((__tmp125272
                       (lambda (_x120660_)
                         (let ((__tmp125273
                                (member _x120660_ _current120656_)))
                           (declare (not safe))
                           (not __tmp125273)))))
                  (declare (not safe))
                  (filter __tmp125272 _paths120658_))))
          (gx#current-expander-module-library-path
           (append _current120656_ _paths120662_)))))
    (define cons-load-path
      (lambda _paths120652_
        (apply cons-library-load-path _paths120652_)
        (apply cons-expander-load-path _paths120652_)))
    (define cons-library-load-path
      (lambda _paths120647_
        (let ((_current120649_ (current-module-library-path))
              (_paths120650_ (map path-expand _paths120647_)))
          (current-module-library-path
           (append _paths120650_ _current120649_)))))
    (define cons-expander-load-path
      (lambda _paths120642_
        (let ((_current120644_ (gx#current-expander-module-library-path))
              (_paths120645_ (map path-expand _paths120642_)))
          (gx#current-expander-module-library-path
           (append _paths120645_ _current120644_)))))
    (define with-cons-load-path
      (lambda (_thunk120638_ . _paths120639_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk120638_
                        _paths120639_))
               _paths120639_)))
    (define with-cons-library-load-path
      (lambda (_thunk120631_ . _paths120632_)
        (let ((_current120634_ (current-module-library-path))
              (_paths120635_ (map path-expand _paths120632_)))
          (let ((__tmp125275 (lambda () (_thunk120631_)))
                (__tmp125274 (append _paths120635_ _current120634_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125275
             current-module-library-path
             __tmp125274)))))
    (define with-cons-expander-load-path
      (lambda (_thunk120624_ . _paths120625_)
        (let ((_current120627_ (gx#current-expander-module-library-path))
              (_paths120628_ (map path-expand _paths120625_)))
          (let ((__tmp125277 (lambda () (_thunk120624_)))
                (__tmp125276 (append _paths120628_ _current120627_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125277
             gx#current-expander-module-library-path
             __tmp125276)))))
    (define __expand-source
      (lambda (_src120610_)
        (letrec ((_expand120612_
                  (lambda (_src120622_)
                    (let ((__tmp125278
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src120622_)))))
                      (declare (not safe))
                      (__compile-top __tmp125278))))
                 (_no-expand120613_
                  (lambda (_src120618_)
                    (if (__loading-scheme-source)
                        _src120618_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src120618_))
                            (let ((_code120620_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src120618_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code120620_))
                                  (if (let ((__tmp125279
                                             (let ()
                                               (declare (not safe))
                                               (##car _code120620_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp125279))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code120620_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e120615_
                 (let ()
                   (declare (not safe))
                   (_no-expand120613_ _src120610_))))
            (if _$e120615_
                _$e120615_
                (let () (declare (not safe)) (_expand120612_ _src120610_)))))))
    (define __macro-descr
      (lambda (_src120596_ _def-syntax?120597_)
        (letrec ((_fail!120599_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src120596_))))
                 (_make-descr120600_
                  (lambda (_size120604_)
                    (let ((_expander120607_
                           (let ((__tmp125280
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src120596_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp125280
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander120607_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?120597_
                             _size120604_
                             _expander120607_
                             _src120596_))
                          (let () (declare (not safe)) (_fail!120599_)))))))
          (if _def-syntax?120597_
              (let () (declare (not safe)) (_make-descr120600_ '-1))
              (let ((_code120602_
                     (let ()
                       (declare (not safe))
                       (##source-code _src120596_))))
                (if (and (let () (declare (not safe)) (##pair? _code120602_))
                         (let ((__tmp125284
                                (let ((__tmp125285
                                       (let ((__tmp125286
                                              (let ()
                                                (declare (not safe))
                                                (##car _code120602_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp125286
                                          _src120596_))))
                                  (declare (not safe))
                                  (##source-code __tmp125285))))
                           (declare (not safe))
                           (##memq __tmp125284 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src120596_ _src120596_ '-3))
                      (let ((__tmp125281
                             (let ((__tmp125282
                                    (let ((__tmp125283
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code120602_))))
                                      (declare (not safe))
                                      (##sourcify __tmp125283 _src120596_))))
                               (declare (not safe))
                               (##form-size __tmp125282))))
                        (declare (not safe))
                        (_make-descr120600_ __tmp125281)))
                    (let () (declare (not safe)) (_fail!120599_))))))))
    (define __source->syntax
      (lambda (_src120590_)
        (let _recur120592_ ((_e120594_ _src120590_))
          (if (let () (declare (not safe)) (##source? _e120594_))
              (let ((__tmp125294
                     (let ((__tmp125295
                            (let ()
                              (declare (not safe))
                              (##source-code _e120594_))))
                       (declare (not safe))
                       (_recur120592_ __tmp125295)))
                    (__tmp125293
                     (let () (declare (not safe)) (##source-locat _e120594_))))
                (declare (not safe))
                (##structure AST::t __tmp125294 __tmp125293))
              (if (let () (declare (not safe)) (pair? _e120594_))
                  (let ((__tmp125291
                         (let ((__tmp125292
                                (let ()
                                  (declare (not safe))
                                  (##car _e120594_))))
                           (declare (not safe))
                           (_recur120592_ __tmp125292)))
                        (__tmp125289
                         (let ((__tmp125290
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120594_))))
                           (declare (not safe))
                           (_recur120592_ __tmp125290))))
                    (declare (not safe))
                    (cons __tmp125291 __tmp125289))
                  (if (let () (declare (not safe)) (vector? _e120594_))
                      (vector-map _recur120592_ _e120594_)
                      (if (let () (declare (not safe)) (box? _e120594_))
                          (let ((__tmp125287
                                 (let ((__tmp125288 (unbox _e120594_)))
                                   (declare (not safe))
                                   (_recur120592_ __tmp125288))))
                            (declare (not safe))
                            (box __tmp125287))
                          _e120594_)))))))
    (define __compile-top-source
      (lambda (_stx120588_)
        (let ((__tmp125296
               (let () (declare (not safe)) (__compile-top _stx120588_))))
          (declare (not safe))
          (cons '__noexpand: __tmp125296))))
    (define __compile-top
      (lambda (_stx120586_)
        (let ((__tmp125297 (gx#core-compile-top-syntax _stx120586_)))
          (declare (not safe))
          (__compile __tmp125297))))
    (define __eval-import
      (lambda (_in120567_)
        (letrec* ((_mods120569_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1120570_
                   (lambda (_in120577_ _phi120578_)
                     (if (gx#module-import? _in120577_)
                         (let ((_iphi120580_
                                (fx+ _phi120578_
                                     (gx#module-import-phi _in120577_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi120580_))
                               (let ((__tmp125299
                                      (gx#module-export-context
                                       (gx#module-import-source _in120577_))))
                                 (declare (not safe))
                                 (_eval1120571_ __tmp125299))
                               '#!void))
                         (if (gx#module-context? _in120577_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi120578_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1120571_ _in120577_))
                                 '#!void)
                             (if (gx#import-set? _in120577_)
                                 (let ((_iphi120582_
                                        (fx+ _phi120578_
                                             (gx#import-set-phi _in120577_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi120582_))
                                       (let ((__tmp125298
                                              (gx#import-set-source
                                               _in120577_)))
                                         (declare (not safe))
                                         (_eval1120571_ __tmp125298))
                                       (if (fxpositive? _iphi120582_)
                                           (for-each
                                            (lambda (_in120584_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1120570_
                                                 _in120584_
                                                 _iphi120582_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in120577_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in120577_))))))
                  (_eval1120571_
                   (lambda (_ctx120575_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods120569_ _ctx120575_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods120569_ _ctx120575_ '#t))
                           (__eval-module _ctx120575_))))))
          (if (let () (declare (not safe)) (pair? _in120567_))
              (for-each
               (lambda (_in120573_)
                 (let () (declare (not safe)) (_import1120570_ _in120573_ '0)))
               _in120567_)
              (let () (declare (not safe)) (_import1120570_ _in120567_ '0))))))
    (define __eval-module
      (lambda (_obj120560_)
        (let* ((_key120562_
                (if (gx#module-context? _obj120560_)
                    (gx#module-context-path _obj120560_)
                    _obj120560_))
               (_$e120564_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key120562_ '#f))))
          (if _$e120564_
              (values _$e120564_)
              (gx#core-eval-module _obj120560_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules120495_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home120497_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir120499_ (path-expand '"lib" _home120497_))
                     (_userpath120501_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath120503_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir120499_ '()))
                          (let ((__tmp125300
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir120499_ '()))))
                            (declare (not safe))
                            (cons _userpath120501_ __tmp125300))))
                     (_loadpath120512_
                      (let ((_$e120505_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e120505_
                            ((lambda (_envvar120508_)
                               (append (let ((__tmp125302
                                              (lambda (_x120510_)
                                                (let ((__tmp125303
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x120510_))))
                                                  (declare (not safe))
                                                  (not __tmp125303))))
                                             (__tmp125301
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar120508_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp125302 __tmp125301))
                                       _loadpath120503_))
                             _$e120505_)
                            _loadpath120503_))))
                (current-module-library-path _loadpath120512_))
              (let* ((_registry-entry120517_
                      (lambda (_m120515_)
                        (let ()
                          (declare (not safe))
                          (cons _m120515_ 'builtin))))
                     (_module-registry120557_
                      (let _lp120519_ ((_rest120521_ _builtin-modules120495_)
                                       (_registry120522_ '()))
                        (let* ((_rest120523120531_ _rest120521_)
                               (_else120525120539_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry120522_))))
                               (_K120527120545_
                                (lambda (_rest120542_ _mod120543_)
                                  (let ((__tmp125304
                                         (let ((__tmp125308
                                                (let ((__tmp125309
                                                       (string-append
                                                        _mod120543_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry120517_
                                                   __tmp125309)))
                                               (__tmp125305
                                                (let ((__tmp125306
                                                       (let ((__tmp125307
                                                              (string-append
                                                               _mod120543_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry120517_
                                                          __tmp125307))))
                                                  (declare (not safe))
                                                  (cons __tmp125306
                                                        _registry120522_))))
                                           (declare (not safe))
                                           (cons __tmp125308 __tmp125305))))
                                    (declare (not safe))
                                    (_lp120519_ _rest120542_ __tmp125304)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest120523120531_))
                              (let ((_hd120528120548_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest120523120531_)))
                                    (_tl120529120550_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest120523120531_))))
                                (let* ((_mod120553_ _hd120528120548_)
                                       (_rest120555_ _tl120529120550_))
                                  (declare (not safe))
                                  (_K120527120545_ _rest120555_ _mod120553_)))
                              (let ()
                                (declare (not safe))
                                (_else120525120539_)))))))
                (current-module-registry _module-registry120557_))
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
