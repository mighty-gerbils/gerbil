(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707616237)
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
        (letrec* ((_+readtable+119621_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core119623_ (gx#import-module ':gerbil/core))
                 (_pre119625_ (gx#make-prelude-context _core119623_)))
            (gx#current-expander-module-prelude _pre119625_)
            (gx#core-bind-root-syntax! ':<core> _pre119625_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port119628_)
             (input-port-readtable-set! _port119628_ _+readtable+119621_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port119630_)
             (output-port-readtable-set!
              _port119630_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port119630_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline119618_) '#!void))
    (define load-scheme
      (lambda (_path119613_)
        (let ((__tmp124100
               (lambda ()
                 (let ((__tmp124101 (lambda _args119616_ '#f)))
                   (declare (not safe))
                   (##load _path119613_ __tmp124101 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp124100
           __loading-scheme-source
           _path119613_))))
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
      (lambda _paths119608_
        (apply add-library-load-path _paths119608_)
        (apply add-expander-load-path _paths119608_)))
    (define add-library-load-path
      (lambda _paths119597_
        (let* ((_current119599_ (current-module-library-path))
               (_paths119601_ (map path-expand _paths119597_))
               (_paths119605_
                (let ((__tmp124102
                       (lambda (_x119603_)
                         (let ((__tmp124103
                                (member _x119603_ _current119599_)))
                           (declare (not safe))
                           (not __tmp124103)))))
                  (declare (not safe))
                  (filter __tmp124102 _paths119601_))))
          (current-module-library-path
           (append _current119599_ _paths119605_)))))
    (define add-expander-load-path
      (lambda _paths119586_
        (let* ((_current119588_ (gx#current-expander-module-library-path))
               (_paths119590_ (map path-expand _paths119586_))
               (_paths119594_
                (let ((__tmp124104
                       (lambda (_x119592_)
                         (let ((__tmp124105
                                (member _x119592_ _current119588_)))
                           (declare (not safe))
                           (not __tmp124105)))))
                  (declare (not safe))
                  (filter __tmp124104 _paths119590_))))
          (gx#current-expander-module-library-path
           (append _current119588_ _paths119594_)))))
    (define cons-load-path
      (lambda _paths119584_
        (apply cons-library-load-path _paths119584_)
        (apply cons-expander-load-path _paths119584_)))
    (define cons-library-load-path
      (lambda _paths119579_
        (let ((_current119581_ (current-module-library-path))
              (_paths119582_ (map path-expand _paths119579_)))
          (current-module-library-path
           (append _paths119582_ _current119581_)))))
    (define cons-expander-load-path
      (lambda _paths119574_
        (let ((_current119576_ (gx#current-expander-module-library-path))
              (_paths119577_ (map path-expand _paths119574_)))
          (gx#current-expander-module-library-path
           (append _paths119577_ _current119576_)))))
    (define with-cons-load-path
      (lambda (_thunk119570_ . _paths119571_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk119570_
                        _paths119571_))
               _paths119571_)))
    (define with-cons-library-load-path
      (lambda (_thunk119563_ . _paths119564_)
        (let ((_current119566_ (current-module-library-path))
              (_paths119567_ (map path-expand _paths119564_)))
          (let ((__tmp124107 (lambda () (_thunk119563_)))
                (__tmp124106 (append _paths119567_ _current119566_)))
            (declare (not safe))
            (call-with-parameters
             __tmp124107
             current-module-library-path
             __tmp124106)))))
    (define with-cons-expander-load-path
      (lambda (_thunk119556_ . _paths119557_)
        (let ((_current119559_ (gx#current-expander-module-library-path))
              (_paths119560_ (map path-expand _paths119557_)))
          (let ((__tmp124109 (lambda () (_thunk119556_)))
                (__tmp124108 (append _paths119560_ _current119559_)))
            (declare (not safe))
            (call-with-parameters
             __tmp124109
             gx#current-expander-module-library-path
             __tmp124108)))))
    (define __expand-source
      (lambda (_src119542_)
        (letrec ((_expand119544_
                  (lambda (_src119554_)
                    (let ((__tmp124110
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src119554_)))))
                      (declare (not safe))
                      (__compile-top __tmp124110))))
                 (_no-expand119545_
                  (lambda (_src119550_)
                    (if (__loading-scheme-source)
                        _src119550_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src119550_))
                            (let ((_code119552_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src119550_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code119552_))
                                  (if (let ((__tmp124111
                                             (let ()
                                               (declare (not safe))
                                               (##car _code119552_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp124111))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code119552_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e119547_
                 (let ()
                   (declare (not safe))
                   (_no-expand119545_ _src119542_))))
            (if _$e119547_
                _$e119547_
                (let () (declare (not safe)) (_expand119544_ _src119542_)))))))
    (define __macro-descr
      (lambda (_src119528_ _def-syntax?119529_)
        (letrec ((_fail!119531_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src119528_))))
                 (_make-descr119532_
                  (lambda (_size119536_)
                    (let ((_expander119539_
                           (let ((__tmp124112
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src119528_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp124112
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander119539_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?119529_
                             _size119536_
                             _expander119539_
                             _src119528_))
                          (let () (declare (not safe)) (_fail!119531_)))))))
          (if _def-syntax?119529_
              (let () (declare (not safe)) (_make-descr119532_ '-1))
              (let ((_code119534_
                     (let ()
                       (declare (not safe))
                       (##source-code _src119528_))))
                (if (and (let () (declare (not safe)) (##pair? _code119534_))
                         (let ((__tmp124116
                                (let ((__tmp124117
                                       (let ((__tmp124118
                                              (let ()
                                                (declare (not safe))
                                                (##car _code119534_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp124118
                                          _src119528_))))
                                  (declare (not safe))
                                  (##source-code __tmp124117))))
                           (declare (not safe))
                           (##memq __tmp124116 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src119528_ _src119528_ '-3))
                      (let ((__tmp124113
                             (let ((__tmp124114
                                    (let ((__tmp124115
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code119534_))))
                                      (declare (not safe))
                                      (##sourcify __tmp124115 _src119528_))))
                               (declare (not safe))
                               (##form-size __tmp124114))))
                        (declare (not safe))
                        (_make-descr119532_ __tmp124113)))
                    (let () (declare (not safe)) (_fail!119531_))))))))
    (define __source->syntax
      (lambda (_src119522_)
        (let _recur119524_ ((_e119526_ _src119522_))
          (if (let () (declare (not safe)) (##source? _e119526_))
              (let ((__tmp124126
                     (let ((__tmp124127
                            (let ()
                              (declare (not safe))
                              (##source-code _e119526_))))
                       (declare (not safe))
                       (_recur119524_ __tmp124127)))
                    (__tmp124125
                     (let () (declare (not safe)) (##source-locat _e119526_))))
                (declare (not safe))
                (##structure AST::t __tmp124126 __tmp124125))
              (if (let () (declare (not safe)) (pair? _e119526_))
                  (let ((__tmp124123
                         (let ((__tmp124124
                                (let ()
                                  (declare (not safe))
                                  (##car _e119526_))))
                           (declare (not safe))
                           (_recur119524_ __tmp124124)))
                        (__tmp124121
                         (let ((__tmp124122
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119526_))))
                           (declare (not safe))
                           (_recur119524_ __tmp124122))))
                    (declare (not safe))
                    (cons __tmp124123 __tmp124121))
                  (if (let () (declare (not safe)) (vector? _e119526_))
                      (vector-map _recur119524_ _e119526_)
                      (if (let () (declare (not safe)) (box? _e119526_))
                          (let ((__tmp124119
                                 (let ((__tmp124120 (unbox _e119526_)))
                                   (declare (not safe))
                                   (_recur119524_ __tmp124120))))
                            (declare (not safe))
                            (box __tmp124119))
                          _e119526_)))))))
    (define __compile-top-source
      (lambda (_stx119520_)
        (let ((__tmp124128
               (let () (declare (not safe)) (__compile-top _stx119520_))))
          (declare (not safe))
          (cons '__noexpand: __tmp124128))))
    (define __compile-top
      (lambda (_stx119518_)
        (let ((__tmp124129 (gx#core-compile-top-syntax _stx119518_)))
          (declare (not safe))
          (__compile __tmp124129))))
    (define __eval-import
      (lambda (_in119499_)
        (letrec* ((_mods119501_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1119502_
                   (lambda (_in119509_ _phi119510_)
                     (if (gx#module-import? _in119509_)
                         (let ((_iphi119512_
                                (fx+ _phi119510_
                                     (gx#module-import-phi _in119509_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi119512_))
                               (let ((__tmp124131
                                      (gx#module-export-context
                                       (gx#module-import-source _in119509_))))
                                 (declare (not safe))
                                 (_eval1119503_ __tmp124131))
                               '#!void))
                         (if (gx#module-context? _in119509_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi119510_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1119503_ _in119509_))
                                 '#!void)
                             (if (gx#import-set? _in119509_)
                                 (let ((_iphi119514_
                                        (fx+ _phi119510_
                                             (gx#import-set-phi _in119509_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi119514_))
                                       (let ((__tmp124130
                                              (gx#import-set-source
                                               _in119509_)))
                                         (declare (not safe))
                                         (_eval1119503_ __tmp124130))
                                       (if (fxpositive? _iphi119514_)
                                           (for-each
                                            (lambda (_in119516_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1119502_
                                                 _in119516_
                                                 _iphi119514_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in119509_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in119509_))))))
                  (_eval1119503_
                   (lambda (_ctx119507_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods119501_ _ctx119507_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods119501_ _ctx119507_ '#t))
                           (__eval-module _ctx119507_))))))
          (if (let () (declare (not safe)) (pair? _in119499_))
              (for-each
               (lambda (_in119505_)
                 (let () (declare (not safe)) (_import1119502_ _in119505_ '0)))
               _in119499_)
              (let () (declare (not safe)) (_import1119502_ _in119499_ '0))))))
    (define __eval-module
      (lambda (_obj119492_)
        (let* ((_key119494_
                (if (gx#module-context? _obj119492_)
                    (gx#module-context-path _obj119492_)
                    _obj119492_))
               (_$e119496_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key119494_ '#f))))
          (if _$e119496_
              (values _$e119496_)
              (gx#core-eval-module _obj119492_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules119427_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home119429_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir119431_ (path-expand '"lib" _home119429_))
                     (_userpath119433_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath119435_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir119431_ '()))
                          (let ((__tmp124132
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir119431_ '()))))
                            (declare (not safe))
                            (cons _userpath119433_ __tmp124132))))
                     (_loadpath119444_
                      (let ((_$e119437_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e119437_
                            ((lambda (_envvar119440_)
                               (append (let ((__tmp124134
                                              (lambda (_x119442_)
                                                (let ((__tmp124135
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x119442_))))
                                                  (declare (not safe))
                                                  (not __tmp124135))))
                                             (__tmp124133
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar119440_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp124134 __tmp124133))
                                       _loadpath119435_))
                             _$e119437_)
                            _loadpath119435_))))
                (current-module-library-path _loadpath119444_))
              (let* ((_registry-entry119449_
                      (lambda (_m119447_)
                        (let ()
                          (declare (not safe))
                          (cons _m119447_ 'builtin))))
                     (_module-registry119489_
                      (let _lp119451_ ((_rest119453_ _builtin-modules119427_)
                                       (_registry119454_ '()))
                        (let* ((_rest119455119463_ _rest119453_)
                               (_else119457119471_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry119454_))))
                               (_K119459119477_
                                (lambda (_rest119474_ _mod119475_)
                                  (let ((__tmp124136
                                         (let ((__tmp124140
                                                (let ((__tmp124141
                                                       (string-append
                                                        _mod119475_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry119449_
                                                   __tmp124141)))
                                               (__tmp124137
                                                (let ((__tmp124138
                                                       (let ((__tmp124139
                                                              (string-append
                                                               _mod119475_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry119449_
                                                          __tmp124139))))
                                                  (declare (not safe))
                                                  (cons __tmp124138
                                                        _registry119454_))))
                                           (declare (not safe))
                                           (cons __tmp124140 __tmp124137))))
                                    (declare (not safe))
                                    (_lp119451_ _rest119474_ __tmp124136)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest119455119463_))
                              (let ((_hd119460119480_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest119455119463_)))
                                    (_tl119461119482_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest119455119463_))))
                                (let* ((_mod119485_ _hd119460119480_)
                                       (_rest119487_ _tl119461119482_))
                                  (declare (not safe))
                                  (_K119459119477_ _rest119487_ _mod119485_)))
                              (let ()
                                (declare (not safe))
                                (_else119457119471_)))))))
                (current-module-registry _module-registry119489_))
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
