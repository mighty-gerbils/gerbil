(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707618264)
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
        (letrec* ((_+readtable+119624_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core119626_ (gx#import-module ':gerbil/core))
                 (_pre119628_ (gx#make-prelude-context _core119626_)))
            (gx#current-expander-module-prelude _pre119628_)
            (gx#core-bind-root-syntax! ':<core> _pre119628_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port119631_)
             (input-port-readtable-set! _port119631_ _+readtable+119624_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port119633_)
             (output-port-readtable-set!
              _port119633_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port119633_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline119621_) '#!void))
    (define load-scheme
      (lambda (_path119616_)
        (let ((__tmp124103
               (lambda ()
                 (let ((__tmp124104 (lambda _args119619_ '#f)))
                   (declare (not safe))
                   (##load _path119616_ __tmp124104 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp124103
           __loading-scheme-source
           _path119616_))))
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
      (lambda _paths119611_
        (apply add-library-load-path _paths119611_)
        (apply add-expander-load-path _paths119611_)))
    (define add-library-load-path
      (lambda _paths119600_
        (let* ((_current119602_ (current-module-library-path))
               (_paths119604_ (map path-expand _paths119600_))
               (_paths119608_
                (let ((__tmp124105
                       (lambda (_x119606_)
                         (let ((__tmp124106
                                (member _x119606_ _current119602_)))
                           (declare (not safe))
                           (not __tmp124106)))))
                  (declare (not safe))
                  (filter __tmp124105 _paths119604_))))
          (current-module-library-path
           (append _current119602_ _paths119608_)))))
    (define add-expander-load-path
      (lambda _paths119589_
        (let* ((_current119591_ (gx#current-expander-module-library-path))
               (_paths119593_ (map path-expand _paths119589_))
               (_paths119597_
                (let ((__tmp124107
                       (lambda (_x119595_)
                         (let ((__tmp124108
                                (member _x119595_ _current119591_)))
                           (declare (not safe))
                           (not __tmp124108)))))
                  (declare (not safe))
                  (filter __tmp124107 _paths119593_))))
          (gx#current-expander-module-library-path
           (append _current119591_ _paths119597_)))))
    (define cons-load-path
      (lambda _paths119587_
        (apply cons-library-load-path _paths119587_)
        (apply cons-expander-load-path _paths119587_)))
    (define cons-library-load-path
      (lambda _paths119582_
        (let ((_current119584_ (current-module-library-path))
              (_paths119585_ (map path-expand _paths119582_)))
          (current-module-library-path
           (append _paths119585_ _current119584_)))))
    (define cons-expander-load-path
      (lambda _paths119577_
        (let ((_current119579_ (gx#current-expander-module-library-path))
              (_paths119580_ (map path-expand _paths119577_)))
          (gx#current-expander-module-library-path
           (append _paths119580_ _current119579_)))))
    (define with-cons-load-path
      (lambda (_thunk119573_ . _paths119574_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk119573_
                        _paths119574_))
               _paths119574_)))
    (define with-cons-library-load-path
      (lambda (_thunk119566_ . _paths119567_)
        (let ((_current119569_ (current-module-library-path))
              (_paths119570_ (map path-expand _paths119567_)))
          (let ((__tmp124110 (lambda () (_thunk119566_)))
                (__tmp124109 (append _paths119570_ _current119569_)))
            (declare (not safe))
            (call-with-parameters
             __tmp124110
             current-module-library-path
             __tmp124109)))))
    (define with-cons-expander-load-path
      (lambda (_thunk119559_ . _paths119560_)
        (let ((_current119562_ (gx#current-expander-module-library-path))
              (_paths119563_ (map path-expand _paths119560_)))
          (let ((__tmp124112 (lambda () (_thunk119559_)))
                (__tmp124111 (append _paths119563_ _current119562_)))
            (declare (not safe))
            (call-with-parameters
             __tmp124112
             gx#current-expander-module-library-path
             __tmp124111)))))
    (define __expand-source
      (lambda (_src119545_)
        (letrec ((_expand119547_
                  (lambda (_src119557_)
                    (let ((__tmp124113
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src119557_)))))
                      (declare (not safe))
                      (__compile-top __tmp124113))))
                 (_no-expand119548_
                  (lambda (_src119553_)
                    (if (__loading-scheme-source)
                        _src119553_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src119553_))
                            (let ((_code119555_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src119553_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code119555_))
                                  (if (let ((__tmp124114
                                             (let ()
                                               (declare (not safe))
                                               (##car _code119555_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp124114))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code119555_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e119550_
                 (let ()
                   (declare (not safe))
                   (_no-expand119548_ _src119545_))))
            (if _$e119550_
                _$e119550_
                (let () (declare (not safe)) (_expand119547_ _src119545_)))))))
    (define __macro-descr
      (lambda (_src119531_ _def-syntax?119532_)
        (letrec ((_fail!119534_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src119531_))))
                 (_make-descr119535_
                  (lambda (_size119539_)
                    (let ((_expander119542_
                           (let ((__tmp124115
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src119531_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp124115
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander119542_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?119532_
                             _size119539_
                             _expander119542_
                             _src119531_))
                          (let () (declare (not safe)) (_fail!119534_)))))))
          (if _def-syntax?119532_
              (let () (declare (not safe)) (_make-descr119535_ '-1))
              (let ((_code119537_
                     (let ()
                       (declare (not safe))
                       (##source-code _src119531_))))
                (if (and (let () (declare (not safe)) (##pair? _code119537_))
                         (let ((__tmp124119
                                (let ((__tmp124120
                                       (let ((__tmp124121
                                              (let ()
                                                (declare (not safe))
                                                (##car _code119537_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp124121
                                          _src119531_))))
                                  (declare (not safe))
                                  (##source-code __tmp124120))))
                           (declare (not safe))
                           (##memq __tmp124119 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src119531_ _src119531_ '-3))
                      (let ((__tmp124116
                             (let ((__tmp124117
                                    (let ((__tmp124118
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code119537_))))
                                      (declare (not safe))
                                      (##sourcify __tmp124118 _src119531_))))
                               (declare (not safe))
                               (##form-size __tmp124117))))
                        (declare (not safe))
                        (_make-descr119535_ __tmp124116)))
                    (let () (declare (not safe)) (_fail!119534_))))))))
    (define __source->syntax
      (lambda (_src119525_)
        (let _recur119527_ ((_e119529_ _src119525_))
          (if (let () (declare (not safe)) (##source? _e119529_))
              (let ((__tmp124129
                     (let ((__tmp124130
                            (let ()
                              (declare (not safe))
                              (##source-code _e119529_))))
                       (declare (not safe))
                       (_recur119527_ __tmp124130)))
                    (__tmp124128
                     (let () (declare (not safe)) (##source-locat _e119529_))))
                (declare (not safe))
                (##structure AST::t __tmp124129 __tmp124128))
              (if (let () (declare (not safe)) (pair? _e119529_))
                  (let ((__tmp124126
                         (let ((__tmp124127
                                (let ()
                                  (declare (not safe))
                                  (##car _e119529_))))
                           (declare (not safe))
                           (_recur119527_ __tmp124127)))
                        (__tmp124124
                         (let ((__tmp124125
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119529_))))
                           (declare (not safe))
                           (_recur119527_ __tmp124125))))
                    (declare (not safe))
                    (cons __tmp124126 __tmp124124))
                  (if (let () (declare (not safe)) (vector? _e119529_))
                      (vector-map _recur119527_ _e119529_)
                      (if (let () (declare (not safe)) (box? _e119529_))
                          (let ((__tmp124122
                                 (let ((__tmp124123 (unbox _e119529_)))
                                   (declare (not safe))
                                   (_recur119527_ __tmp124123))))
                            (declare (not safe))
                            (box __tmp124122))
                          _e119529_)))))))
    (define __compile-top-source
      (lambda (_stx119523_)
        (let ((__tmp124131
               (let () (declare (not safe)) (__compile-top _stx119523_))))
          (declare (not safe))
          (cons '__noexpand: __tmp124131))))
    (define __compile-top
      (lambda (_stx119521_)
        (let ((__tmp124132 (gx#core-compile-top-syntax _stx119521_)))
          (declare (not safe))
          (__compile __tmp124132))))
    (define __eval-import
      (lambda (_in119502_)
        (letrec* ((_mods119504_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1119505_
                   (lambda (_in119512_ _phi119513_)
                     (if (gx#module-import? _in119512_)
                         (let ((_iphi119515_
                                (fx+ _phi119513_
                                     (gx#module-import-phi _in119512_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi119515_))
                               (let ((__tmp124134
                                      (gx#module-export-context
                                       (gx#module-import-source _in119512_))))
                                 (declare (not safe))
                                 (_eval1119506_ __tmp124134))
                               '#!void))
                         (if (gx#module-context? _in119512_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi119513_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1119506_ _in119512_))
                                 '#!void)
                             (if (gx#import-set? _in119512_)
                                 (let ((_iphi119517_
                                        (fx+ _phi119513_
                                             (gx#import-set-phi _in119512_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi119517_))
                                       (let ((__tmp124133
                                              (gx#import-set-source
                                               _in119512_)))
                                         (declare (not safe))
                                         (_eval1119506_ __tmp124133))
                                       (if (fxpositive? _iphi119517_)
                                           (for-each
                                            (lambda (_in119519_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1119505_
                                                 _in119519_
                                                 _iphi119517_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in119512_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in119512_))))))
                  (_eval1119506_
                   (lambda (_ctx119510_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods119504_ _ctx119510_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods119504_ _ctx119510_ '#t))
                           (__eval-module _ctx119510_))))))
          (if (let () (declare (not safe)) (pair? _in119502_))
              (for-each
               (lambda (_in119508_)
                 (let () (declare (not safe)) (_import1119505_ _in119508_ '0)))
               _in119502_)
              (let () (declare (not safe)) (_import1119505_ _in119502_ '0))))))
    (define __eval-module
      (lambda (_obj119495_)
        (let* ((_key119497_
                (if (gx#module-context? _obj119495_)
                    (gx#module-context-path _obj119495_)
                    _obj119495_))
               (_$e119499_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key119497_ '#f))))
          (if _$e119499_
              (values _$e119499_)
              (gx#core-eval-module _obj119495_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules119430_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home119432_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir119434_ (path-expand '"lib" _home119432_))
                     (_userpath119436_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath119438_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir119434_ '()))
                          (let ((__tmp124135
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir119434_ '()))))
                            (declare (not safe))
                            (cons _userpath119436_ __tmp124135))))
                     (_loadpath119447_
                      (let ((_$e119440_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e119440_
                            ((lambda (_envvar119443_)
                               (append (let ((__tmp124137
                                              (lambda (_x119445_)
                                                (let ((__tmp124138
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x119445_))))
                                                  (declare (not safe))
                                                  (not __tmp124138))))
                                             (__tmp124136
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar119443_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp124137 __tmp124136))
                                       _loadpath119438_))
                             _$e119440_)
                            _loadpath119438_))))
                (current-module-library-path _loadpath119447_))
              (let* ((_registry-entry119452_
                      (lambda (_m119450_)
                        (let ()
                          (declare (not safe))
                          (cons _m119450_ 'builtin))))
                     (_module-registry119492_
                      (let _lp119454_ ((_rest119456_ _builtin-modules119430_)
                                       (_registry119457_ '()))
                        (let* ((_rest119458119466_ _rest119456_)
                               (_else119460119474_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry119457_))))
                               (_K119462119480_
                                (lambda (_rest119477_ _mod119478_)
                                  (let ((__tmp124139
                                         (let ((__tmp124143
                                                (let ((__tmp124144
                                                       (string-append
                                                        _mod119478_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry119452_
                                                   __tmp124144)))
                                               (__tmp124140
                                                (let ((__tmp124141
                                                       (let ((__tmp124142
                                                              (string-append
                                                               _mod119478_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry119452_
                                                          __tmp124142))))
                                                  (declare (not safe))
                                                  (cons __tmp124141
                                                        _registry119457_))))
                                           (declare (not safe))
                                           (cons __tmp124143 __tmp124140))))
                                    (declare (not safe))
                                    (_lp119454_ _rest119477_ __tmp124139)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest119458119466_))
                              (let ((_hd119463119483_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest119458119466_)))
                                    (_tl119464119485_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest119458119466_))))
                                (let* ((_mod119488_ _hd119463119483_)
                                       (_rest119490_ _tl119464119485_))
                                  (declare (not safe))
                                  (_K119462119480_ _rest119490_ _mod119488_)))
                              (let ()
                                (declare (not safe))
                                (_else119460119474_)))))))
                (current-module-registry _module-registry119492_))
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
