(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707610213)
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
        (letrec* ((_+readtable+119617_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core119619_ (gx#import-module ':gerbil/core))
                 (_pre119621_ (gx#make-prelude-context _core119619_)))
            (gx#current-expander-module-prelude _pre119621_)
            (gx#core-bind-root-syntax! ':<core> _pre119621_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port119624_)
             (input-port-readtable-set! _port119624_ _+readtable+119617_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port119626_)
             (output-port-readtable-set!
              _port119626_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port119626_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline119614_) '#!void))
    (define load-scheme
      (lambda (_path119609_)
        (let ((__tmp124096
               (lambda ()
                 (let ((__tmp124097 (lambda _args119612_ '#f)))
                   (declare (not safe))
                   (##load _path119609_ __tmp124097 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp124096
           __loading-scheme-source
           _path119609_))))
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
      (lambda _paths119604_
        (apply add-library-load-path _paths119604_)
        (apply add-expander-load-path _paths119604_)))
    (define add-library-load-path
      (lambda _paths119593_
        (let* ((_current119595_ (current-module-library-path))
               (_paths119597_ (map path-expand _paths119593_))
               (_paths119601_
                (let ((__tmp124098
                       (lambda (_x119599_)
                         (let ((__tmp124099
                                (member _x119599_ _current119595_)))
                           (declare (not safe))
                           (not __tmp124099)))))
                  (declare (not safe))
                  (filter __tmp124098 _paths119597_))))
          (current-module-library-path
           (append _current119595_ _paths119601_)))))
    (define add-expander-load-path
      (lambda _paths119582_
        (let* ((_current119584_ (gx#current-expander-module-library-path))
               (_paths119586_ (map path-expand _paths119582_))
               (_paths119590_
                (let ((__tmp124100
                       (lambda (_x119588_)
                         (let ((__tmp124101
                                (member _x119588_ _current119584_)))
                           (declare (not safe))
                           (not __tmp124101)))))
                  (declare (not safe))
                  (filter __tmp124100 _paths119586_))))
          (gx#current-expander-module-library-path
           (append _current119584_ _paths119590_)))))
    (define cons-load-path
      (lambda _paths119580_
        (apply cons-library-load-path _paths119580_)
        (apply cons-expander-load-path _paths119580_)))
    (define cons-library-load-path
      (lambda _paths119575_
        (let ((_current119577_ (current-module-library-path))
              (_paths119578_ (map path-expand _paths119575_)))
          (current-module-library-path
           (append _paths119578_ _current119577_)))))
    (define cons-expander-load-path
      (lambda _paths119570_
        (let ((_current119572_ (gx#current-expander-module-library-path))
              (_paths119573_ (map path-expand _paths119570_)))
          (gx#current-expander-module-library-path
           (append _paths119573_ _current119572_)))))
    (define with-cons-load-path
      (lambda (_thunk119566_ . _paths119567_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk119566_
                        _paths119567_))
               _paths119567_)))
    (define with-cons-library-load-path
      (lambda (_thunk119559_ . _paths119560_)
        (let ((_current119562_ (current-module-library-path))
              (_paths119563_ (map path-expand _paths119560_)))
          (let ((__tmp124103 (lambda () (_thunk119559_)))
                (__tmp124102 (append _paths119563_ _current119562_)))
            (declare (not safe))
            (call-with-parameters
             __tmp124103
             current-module-library-path
             __tmp124102)))))
    (define with-cons-expander-load-path
      (lambda (_thunk119552_ . _paths119553_)
        (let ((_current119555_ (gx#current-expander-module-library-path))
              (_paths119556_ (map path-expand _paths119553_)))
          (let ((__tmp124105 (lambda () (_thunk119552_)))
                (__tmp124104 (append _paths119556_ _current119555_)))
            (declare (not safe))
            (call-with-parameters
             __tmp124105
             gx#current-expander-module-library-path
             __tmp124104)))))
    (define __expand-source
      (lambda (_src119538_)
        (letrec ((_expand119540_
                  (lambda (_src119550_)
                    (let ((__tmp124106
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src119550_)))))
                      (declare (not safe))
                      (__compile-top __tmp124106))))
                 (_no-expand119541_
                  (lambda (_src119546_)
                    (if (__loading-scheme-source)
                        _src119546_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src119546_))
                            (let ((_code119548_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src119546_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code119548_))
                                  (if (let ((__tmp124107
                                             (let ()
                                               (declare (not safe))
                                               (##car _code119548_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp124107))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code119548_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e119543_
                 (let ()
                   (declare (not safe))
                   (_no-expand119541_ _src119538_))))
            (if _$e119543_
                _$e119543_
                (let () (declare (not safe)) (_expand119540_ _src119538_)))))))
    (define __macro-descr
      (lambda (_src119524_ _def-syntax?119525_)
        (letrec ((_fail!119527_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src119524_))))
                 (_make-descr119528_
                  (lambda (_size119532_)
                    (let ((_expander119535_
                           (let ((__tmp124108
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src119524_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp124108
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander119535_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?119525_
                             _size119532_
                             _expander119535_
                             _src119524_))
                          (let () (declare (not safe)) (_fail!119527_)))))))
          (if _def-syntax?119525_
              (let () (declare (not safe)) (_make-descr119528_ '-1))
              (let ((_code119530_
                     (let ()
                       (declare (not safe))
                       (##source-code _src119524_))))
                (if (and (let () (declare (not safe)) (##pair? _code119530_))
                         (let ((__tmp124112
                                (let ((__tmp124113
                                       (let ((__tmp124114
                                              (let ()
                                                (declare (not safe))
                                                (##car _code119530_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp124114
                                          _src119524_))))
                                  (declare (not safe))
                                  (##source-code __tmp124113))))
                           (declare (not safe))
                           (##memq __tmp124112 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src119524_ _src119524_ '-3))
                      (let ((__tmp124109
                             (let ((__tmp124110
                                    (let ((__tmp124111
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code119530_))))
                                      (declare (not safe))
                                      (##sourcify __tmp124111 _src119524_))))
                               (declare (not safe))
                               (##form-size __tmp124110))))
                        (declare (not safe))
                        (_make-descr119528_ __tmp124109)))
                    (let () (declare (not safe)) (_fail!119527_))))))))
    (define __source->syntax
      (lambda (_src119518_)
        (let _recur119520_ ((_e119522_ _src119518_))
          (if (let () (declare (not safe)) (##source? _e119522_))
              (let ((__tmp124122
                     (let ((__tmp124123
                            (let ()
                              (declare (not safe))
                              (##source-code _e119522_))))
                       (declare (not safe))
                       (_recur119520_ __tmp124123)))
                    (__tmp124121
                     (let () (declare (not safe)) (##source-locat _e119522_))))
                (declare (not safe))
                (##structure AST::t __tmp124122 __tmp124121))
              (if (let () (declare (not safe)) (pair? _e119522_))
                  (let ((__tmp124119
                         (let ((__tmp124120
                                (let ()
                                  (declare (not safe))
                                  (##car _e119522_))))
                           (declare (not safe))
                           (_recur119520_ __tmp124120)))
                        (__tmp124117
                         (let ((__tmp124118
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119522_))))
                           (declare (not safe))
                           (_recur119520_ __tmp124118))))
                    (declare (not safe))
                    (cons __tmp124119 __tmp124117))
                  (if (let () (declare (not safe)) (vector? _e119522_))
                      (vector-map _recur119520_ _e119522_)
                      (if (let () (declare (not safe)) (box? _e119522_))
                          (let ((__tmp124115
                                 (let ((__tmp124116 (unbox _e119522_)))
                                   (declare (not safe))
                                   (_recur119520_ __tmp124116))))
                            (declare (not safe))
                            (box __tmp124115))
                          _e119522_)))))))
    (define __compile-top-source
      (lambda (_stx119516_)
        (let ((__tmp124124
               (let () (declare (not safe)) (__compile-top _stx119516_))))
          (declare (not safe))
          (cons '__noexpand: __tmp124124))))
    (define __compile-top
      (lambda (_stx119514_)
        (let ((__tmp124125 (gx#core-compile-top-syntax _stx119514_)))
          (declare (not safe))
          (__compile __tmp124125))))
    (define __eval-import
      (lambda (_in119495_)
        (letrec* ((_mods119497_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1119498_
                   (lambda (_in119505_ _phi119506_)
                     (if (gx#module-import? _in119505_)
                         (let ((_iphi119508_
                                (fx+ _phi119506_
                                     (gx#module-import-phi _in119505_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi119508_))
                               (let ((__tmp124127
                                      (gx#module-export-context
                                       (gx#module-import-source _in119505_))))
                                 (declare (not safe))
                                 (_eval1119499_ __tmp124127))
                               '#!void))
                         (if (gx#module-context? _in119505_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi119506_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1119499_ _in119505_))
                                 '#!void)
                             (if (gx#import-set? _in119505_)
                                 (let ((_iphi119510_
                                        (fx+ _phi119506_
                                             (gx#import-set-phi _in119505_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi119510_))
                                       (let ((__tmp124126
                                              (gx#import-set-source
                                               _in119505_)))
                                         (declare (not safe))
                                         (_eval1119499_ __tmp124126))
                                       (if (fxpositive? _iphi119510_)
                                           (for-each
                                            (lambda (_in119512_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1119498_
                                                 _in119512_
                                                 _iphi119510_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in119505_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in119505_))))))
                  (_eval1119499_
                   (lambda (_ctx119503_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods119497_ _ctx119503_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods119497_ _ctx119503_ '#t))
                           (__eval-module _ctx119503_))))))
          (if (let () (declare (not safe)) (pair? _in119495_))
              (for-each
               (lambda (_in119501_)
                 (let () (declare (not safe)) (_import1119498_ _in119501_ '0)))
               _in119495_)
              (let () (declare (not safe)) (_import1119498_ _in119495_ '0))))))
    (define __eval-module
      (lambda (_obj119488_)
        (let* ((_key119490_
                (if (gx#module-context? _obj119488_)
                    (gx#module-context-path _obj119488_)
                    _obj119488_))
               (_$e119492_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key119490_ '#f))))
          (if _$e119492_
              (values _$e119492_)
              (gx#core-eval-module _obj119488_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules119423_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home119425_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir119427_ (path-expand '"lib" _home119425_))
                     (_userpath119429_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath119431_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir119427_ '()))
                          (let ((__tmp124128
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir119427_ '()))))
                            (declare (not safe))
                            (cons _userpath119429_ __tmp124128))))
                     (_loadpath119440_
                      (let ((_$e119433_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e119433_
                            ((lambda (_envvar119436_)
                               (append (let ((__tmp124130
                                              (lambda (_x119438_)
                                                (let ((__tmp124131
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x119438_))))
                                                  (declare (not safe))
                                                  (not __tmp124131))))
                                             (__tmp124129
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar119436_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp124130 __tmp124129))
                                       _loadpath119431_))
                             _$e119433_)
                            _loadpath119431_))))
                (current-module-library-path _loadpath119440_))
              (let* ((_registry-entry119445_
                      (lambda (_m119443_)
                        (let ()
                          (declare (not safe))
                          (cons _m119443_ 'builtin))))
                     (_module-registry119485_
                      (let _lp119447_ ((_rest119449_ _builtin-modules119423_)
                                       (_registry119450_ '()))
                        (let* ((_rest119451119459_ _rest119449_)
                               (_else119453119467_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry119450_))))
                               (_K119455119473_
                                (lambda (_rest119470_ _mod119471_)
                                  (let ((__tmp124132
                                         (let ((__tmp124136
                                                (let ((__tmp124137
                                                       (string-append
                                                        _mod119471_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry119445_
                                                   __tmp124137)))
                                               (__tmp124133
                                                (let ((__tmp124134
                                                       (let ((__tmp124135
                                                              (string-append
                                                               _mod119471_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry119445_
                                                          __tmp124135))))
                                                  (declare (not safe))
                                                  (cons __tmp124134
                                                        _registry119450_))))
                                           (declare (not safe))
                                           (cons __tmp124136 __tmp124133))))
                                    (declare (not safe))
                                    (_lp119447_ _rest119470_ __tmp124132)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest119451119459_))
                              (let ((_hd119456119476_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest119451119459_)))
                                    (_tl119457119478_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest119451119459_))))
                                (let* ((_mod119481_ _hd119456119476_)
                                       (_rest119483_ _tl119457119478_))
                                  (declare (not safe))
                                  (_K119455119473_ _rest119483_ _mod119481_)))
                              (let ()
                                (declare (not safe))
                                (_else119453119467_)))))))
                (current-module-registry _module-registry119485_))
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
